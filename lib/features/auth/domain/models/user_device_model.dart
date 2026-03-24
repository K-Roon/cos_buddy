import 'package:freezed_annotation/freezed_annotation.dart';

part '../models/user_device_model.freezed.dart';
part '../models/user_device_model.g.dart';

enum DevicePlatform { android, ios }

@freezed
class UserDeviceModel with _$UserDeviceModel {
  const factory UserDeviceModel({
    required int deviceId,
    required int userNumber,
    required String fcmToken,
    required DevicePlatform platform,
    String? deviceName,
    String? appVersion,
    @Default(true) bool isActive,

    // 타임스탬프 — 서버 UTC 결정, 앱 읽기 전용
    required DateTime createdAt,
    DateTime?         updatedAt,
  }) = _UserDeviceModel;

  factory UserDeviceModel.fromJson(Map<String, dynamic> json) =>
      _$UserDeviceModelFromJson(json);
}