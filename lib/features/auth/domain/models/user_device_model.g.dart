// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDeviceModelImpl _$$UserDeviceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDeviceModelImpl(
      deviceId: (json['deviceId'] as num).toInt(),
      userNumber: (json['userNumber'] as num).toInt(),
      fcmToken: json['fcmToken'] as String,
      platform: $enumDecode(_$DevicePlatformEnumMap, json['platform']),
      deviceName: json['deviceName'] as String?,
      appVersion: json['appVersion'] as String?,
      isActive: json['isActive'] as bool? ?? true,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserDeviceModelImplToJson(
        _$UserDeviceModelImpl instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'userNumber': instance.userNumber,
      'fcmToken': instance.fcmToken,
      'platform': _$DevicePlatformEnumMap[instance.platform]!,
      'deviceName': instance.deviceName,
      'appVersion': instance.appVersion,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$DevicePlatformEnumMap = {
  DevicePlatform.android: 'android',
  DevicePlatform.ios: 'ios',
};
