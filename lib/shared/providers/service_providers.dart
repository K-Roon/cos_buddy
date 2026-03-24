import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../features/auth/data/datasources/auth_mock_datasource.dart';
import '../features/auth/domain/repositories/auth_repository.dart';
import '../features/auth/domain/repositories/device_repository.dart';
import '../services/fcm_service.dart';
import '../services/ads_service.dart';
import '../services/iap_service.dart';
import '../services/update_service.dart';

final authRepositoryProvider = Provider<AuthRepository>(
      (ref) => AuthMockDatasource(),
);

final deviceRepositoryProvider = Provider<DeviceRepository>(
      (ref) => DeviceMockRepository(),
);

final fcmServiceProvider = Provider<FcmService>((ref) => FcmService(ref));
final adsServiceProvider = Provider<AdsService>((ref) => AdsService(ref));
final iapServiceProvider = Provider<IapService>((ref) => IapService(ref));
final updateServiceProvider = Provider<UpdateService>((ref) => UpdateService());