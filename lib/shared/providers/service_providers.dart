import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cos_buddy/features/auth/data/datasources/auth_mock_datasource.dart';
import 'package:cos_buddy/features/auth/domain/repositories/auth_repository.dart';
import 'package:cos_buddy/features/auth/domain/repositories/device_repository.dart';
import 'package:cos_buddy/services/fcm_service.dart';
import 'package:cos_buddy/services/ads_service.dart';
import 'package:cos_buddy/services/iap_service.dart';
import 'package:cos_buddy/services/update_service.dart';

final authRepositoryProvider = Provider<AuthRepository>(
      (ref) => AuthMockDatasource(),
);

final deviceRepositoryProvider = Provider<DeviceRepository>(
      (ref) => DeviceMockRepository(),
);

final fcmServiceProvider    = Provider<FcmService>((ref)    => FcmService(ref));
final adsServiceProvider    = Provider<AdsService>((ref)    => AdsService(ref));
final iapServiceProvider    = Provider<IapService>((ref)    => IapService(ref));
final updateServiceProvider = Provider<UpdateService>((ref) => UpdateService());