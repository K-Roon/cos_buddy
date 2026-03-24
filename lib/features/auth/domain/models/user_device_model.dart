import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_device_model.freezed.dart';
part 'user_device_model.g.dart';

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
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _UserDeviceModel;

  factory UserDeviceModel.fromJson(Map<String, dynamic> json) =>
      _$UserDeviceModelFromJson(json);
}