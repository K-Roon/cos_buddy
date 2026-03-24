import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants/app_constants.dart';
import '../../features/auth/data/datasources/auth_local_datasource.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: AppConstants.devBaseUrl, // 배포 시 baseUrl로 교체
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'Content-Type': 'application/json'},
    ),
  );

  // 인터셉터: JWT 자동 주입 + 401 시 토큰 갱신
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        final local = AuthLocalDatasource();
        final token = await local.getAccessToken();
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        return handler.next(options);
      },
      onError: (error, handler) async {
        if (error.response?.statusCode == 401) {
          // TODO: Refresh token 로직 추가
          // 지금은 그냥 에러 반환
        }
        return handler.next(error);
      },
    ),
  );

  return dio;
});