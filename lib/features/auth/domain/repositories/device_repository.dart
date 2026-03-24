import '../models/user_device_model.dart';

abstract class DeviceRepository {
  Future<void> registerFcmToken({
    required String token,
    required DevicePlatform platform,
    String? appVersion,
  });

  Future<void> deactivateFcmToken({required String token});
}