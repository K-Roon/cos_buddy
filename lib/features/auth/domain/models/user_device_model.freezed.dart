// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_device_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDeviceModel _$UserDeviceModelFromJson(Map<String, dynamic> json) {
  return _UserDeviceModel.fromJson(json);
}

/// @nodoc
mixin _$UserDeviceModel {
  int get deviceId => throw _privateConstructorUsedError;
  int get userNumber => throw _privateConstructorUsedError;
  String get fcmToken => throw _privateConstructorUsedError;
  DevicePlatform get platform => throw _privateConstructorUsedError;
  String? get deviceName => throw _privateConstructorUsedError;
  String? get appVersion => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserDeviceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDeviceModelCopyWith<UserDeviceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDeviceModelCopyWith<$Res> {
  factory $UserDeviceModelCopyWith(
          UserDeviceModel value, $Res Function(UserDeviceModel) then) =
      _$UserDeviceModelCopyWithImpl<$Res, UserDeviceModel>;
  @useResult
  $Res call(
      {int deviceId,
      int userNumber,
      String fcmToken,
      DevicePlatform platform,
      String? deviceName,
      String? appVersion,
      bool isActive,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$UserDeviceModelCopyWithImpl<$Res, $Val extends UserDeviceModel>
    implements $UserDeviceModelCopyWith<$Res> {
  _$UserDeviceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? userNumber = null,
    Object? fcmToken = null,
    Object? platform = null,
    Object? deviceName = freezed,
    Object? appVersion = freezed,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      userNumber: null == userNumber
          ? _value.userNumber
          : userNumber // ignore: cast_nullable_to_non_nullable
              as int,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as DevicePlatform,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDeviceModelImplCopyWith<$Res>
    implements $UserDeviceModelCopyWith<$Res> {
  factory _$$UserDeviceModelImplCopyWith(_$UserDeviceModelImpl value,
          $Res Function(_$UserDeviceModelImpl) then) =
      __$$UserDeviceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int deviceId,
      int userNumber,
      String fcmToken,
      DevicePlatform platform,
      String? deviceName,
      String? appVersion,
      bool isActive,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$UserDeviceModelImplCopyWithImpl<$Res>
    extends _$UserDeviceModelCopyWithImpl<$Res, _$UserDeviceModelImpl>
    implements _$$UserDeviceModelImplCopyWith<$Res> {
  __$$UserDeviceModelImplCopyWithImpl(
      _$UserDeviceModelImpl _value, $Res Function(_$UserDeviceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? userNumber = null,
    Object? fcmToken = null,
    Object? platform = null,
    Object? deviceName = freezed,
    Object? appVersion = freezed,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserDeviceModelImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      userNumber: null == userNumber
          ? _value.userNumber
          : userNumber // ignore: cast_nullable_to_non_nullable
              as int,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as DevicePlatform,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDeviceModelImpl implements _UserDeviceModel {
  const _$UserDeviceModelImpl(
      {required this.deviceId,
      required this.userNumber,
      required this.fcmToken,
      required this.platform,
      this.deviceName,
      this.appVersion,
      this.isActive = true,
      required this.createdAt,
      this.updatedAt});

  factory _$UserDeviceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDeviceModelImplFromJson(json);

  @override
  final int deviceId;
  @override
  final int userNumber;
  @override
  final String fcmToken;
  @override
  final DevicePlatform platform;
  @override
  final String? deviceName;
  @override
  final String? appVersion;
  @override
  @JsonKey()
  final bool isActive;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserDeviceModel(deviceId: $deviceId, userNumber: $userNumber, fcmToken: $fcmToken, platform: $platform, deviceName: $deviceName, appVersion: $appVersion, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDeviceModelImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.userNumber, userNumber) ||
                other.userNumber == userNumber) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId, userNumber, fcmToken,
      platform, deviceName, appVersion, isActive, createdAt, updatedAt);

  /// Create a copy of UserDeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDeviceModelImplCopyWith<_$UserDeviceModelImpl> get copyWith =>
      __$$UserDeviceModelImplCopyWithImpl<_$UserDeviceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDeviceModelImplToJson(
      this,
    );
  }
}

abstract class _UserDeviceModel implements UserDeviceModel {
  const factory _UserDeviceModel(
      {required final int deviceId,
      required final int userNumber,
      required final String fcmToken,
      required final DevicePlatform platform,
      final String? deviceName,
      final String? appVersion,
      final bool isActive,
      required final DateTime createdAt,
      final DateTime? updatedAt}) = _$UserDeviceModelImpl;

  factory _UserDeviceModel.fromJson(Map<String, dynamic> json) =
      _$UserDeviceModelImpl.fromJson;

  @override
  int get deviceId;
  @override
  int get userNumber;
  @override
  String get fcmToken;
  @override
  DevicePlatform get platform;
  @override
  String? get deviceName;
  @override
  String? get appVersion;
  @override
  bool get isActive;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of UserDeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDeviceModelImplCopyWith<_$UserDeviceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
