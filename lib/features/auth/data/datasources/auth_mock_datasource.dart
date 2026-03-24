import 'package:flutter/foundation.dart';
import '../../domain/models/user_model.dart';
import '../../domain/models/user_device_model.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/repositories/device_repository.dart';

class AuthMockDatasource implements AuthRepository {
  UserModel? _currentUser;

  @override
  Future<UserModel> login({
    required String email,
    required String passwordHash,
  }) async {
    await Future.delayed(const Duration(milliseconds: 800));
    _currentUser = _makeUser(email: email, userId: 'mock_user');
    return _currentUser!;
  }

  @override
  Future<UserModel> register({
    required String userId,
    required String email,
    required String passwordHash,
    required String nickname,
    String? phoneNumber,
  }) async {
    await Future.delayed(const Duration(milliseconds: 800));
    _currentUser = UserModel(
      userNumber:  1,
      userId:      userId,
      email:       email,
      nickname:    nickname,
      phoneNumber: phoneNumber,
      createdAt:   DateTime.now().toUtc(),
    );
    return _currentUser!;
  }

  @override
  Future<void> logout() async => _currentUser = null;

  @override
  Future<UserModel?> findBySnsProvider({
    required SnsProvider provider,
    required String      providerUserId,
  }) async => null;

  @override
  Future<UserModel?> getCurrentUser() async => _currentUser;

  @override
  Stream<UserModel?> get authStateChanges async* {
    yield _currentUser;
  }

  UserModel _makeUser({
    required String email,
    required String userId,
  }) =>
      UserModel(
        userNumber:  1,
        userId:      userId,
        email:       email,
        nickname:    'CosBuddy유저',
        isVerified:  true,
        createdAt:   DateTime.now().toUtc(),
      );
}

class DeviceMockRepository implements DeviceRepository {
  @override
  Future<void> registerFcmToken({
    required String         token,
    required DevicePlatform platform,
    String?                 appVersion,
  }) async {
    debugPrint('[MOCK] FCM 등록: $token / $platform / v$appVersion');
  }

  @override
  Future<void> deactivateFcmToken({required String token}) async {
    debugPrint('[MOCK] FCM 비활성화: $token');
  }
}