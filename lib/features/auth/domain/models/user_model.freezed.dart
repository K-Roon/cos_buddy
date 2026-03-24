// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExternalLink _$ExternalLinkFromJson(Map<String, dynamic> json) {
  return _ExternalLink.fromJson(json);
}

/// @nodoc
mixin _$ExternalLink {
  int get displayOrder => throw _privateConstructorUsedError; // 0~9
  String get label => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this ExternalLink to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExternalLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExternalLinkCopyWith<ExternalLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalLinkCopyWith<$Res> {
  factory $ExternalLinkCopyWith(
          ExternalLink value, $Res Function(ExternalLink) then) =
      _$ExternalLinkCopyWithImpl<$Res, ExternalLink>;
  @useResult
  $Res call({int displayOrder, String label, String url});
}

/// @nodoc
class _$ExternalLinkCopyWithImpl<$Res, $Val extends ExternalLink>
    implements $ExternalLinkCopyWith<$Res> {
  _$ExternalLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExternalLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayOrder = null,
    Object? label = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      displayOrder: null == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExternalLinkImplCopyWith<$Res>
    implements $ExternalLinkCopyWith<$Res> {
  factory _$$ExternalLinkImplCopyWith(
          _$ExternalLinkImpl value, $Res Function(_$ExternalLinkImpl) then) =
      __$$ExternalLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int displayOrder, String label, String url});
}

/// @nodoc
class __$$ExternalLinkImplCopyWithImpl<$Res>
    extends _$ExternalLinkCopyWithImpl<$Res, _$ExternalLinkImpl>
    implements _$$ExternalLinkImplCopyWith<$Res> {
  __$$ExternalLinkImplCopyWithImpl(
      _$ExternalLinkImpl _value, $Res Function(_$ExternalLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExternalLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayOrder = null,
    Object? label = null,
    Object? url = null,
  }) {
    return _then(_$ExternalLinkImpl(
      displayOrder: null == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExternalLinkImpl implements _ExternalLink {
  const _$ExternalLinkImpl(
      {required this.displayOrder, required this.label, required this.url});

  factory _$ExternalLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalLinkImplFromJson(json);

  @override
  final int displayOrder;
// 0~9
  @override
  final String label;
  @override
  final String url;

  @override
  String toString() {
    return 'ExternalLink(displayOrder: $displayOrder, label: $label, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalLinkImpl &&
            (identical(other.displayOrder, displayOrder) ||
                other.displayOrder == displayOrder) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, displayOrder, label, url);

  /// Create a copy of ExternalLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalLinkImplCopyWith<_$ExternalLinkImpl> get copyWith =>
      __$$ExternalLinkImplCopyWithImpl<_$ExternalLinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalLinkImplToJson(
      this,
    );
  }
}

abstract class _ExternalLink implements ExternalLink {
  const factory _ExternalLink(
      {required final int displayOrder,
      required final String label,
      required final String url}) = _$ExternalLinkImpl;

  factory _ExternalLink.fromJson(Map<String, dynamic> json) =
      _$ExternalLinkImpl.fromJson;

  @override
  int get displayOrder; // 0~9
  @override
  String get label;
  @override
  String get url;

  /// Create a copy of ExternalLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExternalLinkImplCopyWith<_$ExternalLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnsLink _$SnsLinkFromJson(Map<String, dynamic> json) {
  return _SnsLink.fromJson(json);
}

/// @nodoc
mixin _$SnsLink {
  SnsProvider get provider => throw _privateConstructorUsedError;
  String get providerUserId => throw _privateConstructorUsedError;
  String? get providerEmail => throw _privateConstructorUsedError;

  /// Serializes this SnsLink to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnsLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnsLinkCopyWith<SnsLink> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnsLinkCopyWith<$Res> {
  factory $SnsLinkCopyWith(SnsLink value, $Res Function(SnsLink) then) =
      _$SnsLinkCopyWithImpl<$Res, SnsLink>;
  @useResult
  $Res call(
      {SnsProvider provider, String providerUserId, String? providerEmail});
}

/// @nodoc
class _$SnsLinkCopyWithImpl<$Res, $Val extends SnsLink>
    implements $SnsLinkCopyWith<$Res> {
  _$SnsLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnsLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? providerUserId = null,
    Object? providerEmail = freezed,
  }) {
    return _then(_value.copyWith(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as SnsProvider,
      providerUserId: null == providerUserId
          ? _value.providerUserId
          : providerUserId // ignore: cast_nullable_to_non_nullable
              as String,
      providerEmail: freezed == providerEmail
          ? _value.providerEmail
          : providerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnsLinkImplCopyWith<$Res> implements $SnsLinkCopyWith<$Res> {
  factory _$$SnsLinkImplCopyWith(
          _$SnsLinkImpl value, $Res Function(_$SnsLinkImpl) then) =
      __$$SnsLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SnsProvider provider, String providerUserId, String? providerEmail});
}

/// @nodoc
class __$$SnsLinkImplCopyWithImpl<$Res>
    extends _$SnsLinkCopyWithImpl<$Res, _$SnsLinkImpl>
    implements _$$SnsLinkImplCopyWith<$Res> {
  __$$SnsLinkImplCopyWithImpl(
      _$SnsLinkImpl _value, $Res Function(_$SnsLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnsLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? providerUserId = null,
    Object? providerEmail = freezed,
  }) {
    return _then(_$SnsLinkImpl(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as SnsProvider,
      providerUserId: null == providerUserId
          ? _value.providerUserId
          : providerUserId // ignore: cast_nullable_to_non_nullable
              as String,
      providerEmail: freezed == providerEmail
          ? _value.providerEmail
          : providerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnsLinkImpl implements _SnsLink {
  const _$SnsLinkImpl(
      {required this.provider,
      required this.providerUserId,
      this.providerEmail});

  factory _$SnsLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnsLinkImplFromJson(json);

  @override
  final SnsProvider provider;
  @override
  final String providerUserId;
  @override
  final String? providerEmail;

  @override
  String toString() {
    return 'SnsLink(provider: $provider, providerUserId: $providerUserId, providerEmail: $providerEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnsLinkImpl &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.providerUserId, providerUserId) ||
                other.providerUserId == providerUserId) &&
            (identical(other.providerEmail, providerEmail) ||
                other.providerEmail == providerEmail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, provider, providerUserId, providerEmail);

  /// Create a copy of SnsLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnsLinkImplCopyWith<_$SnsLinkImpl> get copyWith =>
      __$$SnsLinkImplCopyWithImpl<_$SnsLinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnsLinkImplToJson(
      this,
    );
  }
}

abstract class _SnsLink implements SnsLink {
  const factory _SnsLink(
      {required final SnsProvider provider,
      required final String providerUserId,
      final String? providerEmail}) = _$SnsLinkImpl;

  factory _SnsLink.fromJson(Map<String, dynamic> json) = _$SnsLinkImpl.fromJson;

  @override
  SnsProvider get provider;
  @override
  String get providerUserId;
  @override
  String? get providerEmail;

  /// Create a copy of SnsLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnsLinkImplCopyWith<_$SnsLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
// 식별자 — userNumber는 서버 AUTO_INCREMENT, 앱에서 생성 안 함
  int get userNumber => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError; // @ 없이 저장, UI에서 @ 붙임
  String get email => throw _privateConstructorUsedError; // 선택
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get ciValue => throw _privateConstructorUsedError; // 본인인증 연계정보, 추후 수령
// 프로필
  String get nickname => throw _privateConstructorUsedError;
  String? get profileImageUrl => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError; // 링크
  List<ExternalLink> get externalLinks => throw _privateConstructorUsedError;
  List<SnsLink> get snsLinks => throw _privateConstructorUsedError; // 계정 상태
  bool get isVerified => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  AccountStatus get accountStatus =>
      throw _privateConstructorUsedError; // 타임스탬프 — 서버 UTC, 앱 읽기 전용
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get lastLoginAt => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int userNumber,
      String userId,
      String email,
      String? phoneNumber,
      String? ciValue,
      String nickname,
      String? profileImageUrl,
      String? bio,
      List<ExternalLink> externalLinks,
      List<SnsLink> snsLinks,
      bool isVerified,
      bool isPremium,
      bool isActive,
      AccountStatus accountStatus,
      DateTime createdAt,
      DateTime? updatedAt,
      DateTime? lastLoginAt});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userNumber = null,
    Object? userId = null,
    Object? email = null,
    Object? phoneNumber = freezed,
    Object? ciValue = freezed,
    Object? nickname = null,
    Object? profileImageUrl = freezed,
    Object? bio = freezed,
    Object? externalLinks = null,
    Object? snsLinks = null,
    Object? isVerified = null,
    Object? isPremium = null,
    Object? isActive = null,
    Object? accountStatus = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? lastLoginAt = freezed,
  }) {
    return _then(_value.copyWith(
      userNumber: null == userNumber
          ? _value.userNumber
          : userNumber // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      ciValue: freezed == ciValue
          ? _value.ciValue
          : ciValue // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      externalLinks: null == externalLinks
          ? _value.externalLinks
          : externalLinks // ignore: cast_nullable_to_non_nullable
              as List<ExternalLink>,
      snsLinks: null == snsLinks
          ? _value.snsLinks
          : snsLinks // ignore: cast_nullable_to_non_nullable
              as List<SnsLink>,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      accountStatus: null == accountStatus
          ? _value.accountStatus
          : accountStatus // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastLoginAt: freezed == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userNumber,
      String userId,
      String email,
      String? phoneNumber,
      String? ciValue,
      String nickname,
      String? profileImageUrl,
      String? bio,
      List<ExternalLink> externalLinks,
      List<SnsLink> snsLinks,
      bool isVerified,
      bool isPremium,
      bool isActive,
      AccountStatus accountStatus,
      DateTime createdAt,
      DateTime? updatedAt,
      DateTime? lastLoginAt});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userNumber = null,
    Object? userId = null,
    Object? email = null,
    Object? phoneNumber = freezed,
    Object? ciValue = freezed,
    Object? nickname = null,
    Object? profileImageUrl = freezed,
    Object? bio = freezed,
    Object? externalLinks = null,
    Object? snsLinks = null,
    Object? isVerified = null,
    Object? isPremium = null,
    Object? isActive = null,
    Object? accountStatus = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? lastLoginAt = freezed,
  }) {
    return _then(_$UserModelImpl(
      userNumber: null == userNumber
          ? _value.userNumber
          : userNumber // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      ciValue: freezed == ciValue
          ? _value.ciValue
          : ciValue // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      externalLinks: null == externalLinks
          ? _value._externalLinks
          : externalLinks // ignore: cast_nullable_to_non_nullable
              as List<ExternalLink>,
      snsLinks: null == snsLinks
          ? _value._snsLinks
          : snsLinks // ignore: cast_nullable_to_non_nullable
              as List<SnsLink>,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      accountStatus: null == accountStatus
          ? _value.accountStatus
          : accountStatus // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastLoginAt: freezed == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.userNumber,
      required this.userId,
      required this.email,
      this.phoneNumber,
      this.ciValue,
      required this.nickname,
      this.profileImageUrl,
      this.bio,
      final List<ExternalLink> externalLinks = const [],
      final List<SnsLink> snsLinks = const [],
      this.isVerified = false,
      this.isPremium = false,
      this.isActive = true,
      this.accountStatus = AccountStatus.active,
      required this.createdAt,
      this.updatedAt,
      this.lastLoginAt})
      : _externalLinks = externalLinks,
        _snsLinks = snsLinks;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

// 식별자 — userNumber는 서버 AUTO_INCREMENT, 앱에서 생성 안 함
  @override
  final int userNumber;
  @override
  final String userId;
// @ 없이 저장, UI에서 @ 붙임
  @override
  final String email;
// 선택
  @override
  final String? phoneNumber;
  @override
  final String? ciValue;
// 본인인증 연계정보, 추후 수령
// 프로필
  @override
  final String nickname;
  @override
  final String? profileImageUrl;
  @override
  final String? bio;
// 링크
  final List<ExternalLink> _externalLinks;
// 링크
  @override
  @JsonKey()
  List<ExternalLink> get externalLinks {
    if (_externalLinks is EqualUnmodifiableListView) return _externalLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_externalLinks);
  }

  final List<SnsLink> _snsLinks;
  @override
  @JsonKey()
  List<SnsLink> get snsLinks {
    if (_snsLinks is EqualUnmodifiableListView) return _snsLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snsLinks);
  }

// 계정 상태
  @override
  @JsonKey()
  final bool isVerified;
  @override
  @JsonKey()
  final bool isPremium;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final AccountStatus accountStatus;
// 타임스탬프 — 서버 UTC, 앱 읽기 전용
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? lastLoginAt;

  @override
  String toString() {
    return 'UserModel(userNumber: $userNumber, userId: $userId, email: $email, phoneNumber: $phoneNumber, ciValue: $ciValue, nickname: $nickname, profileImageUrl: $profileImageUrl, bio: $bio, externalLinks: $externalLinks, snsLinks: $snsLinks, isVerified: $isVerified, isPremium: $isPremium, isActive: $isActive, accountStatus: $accountStatus, createdAt: $createdAt, updatedAt: $updatedAt, lastLoginAt: $lastLoginAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.userNumber, userNumber) ||
                other.userNumber == userNumber) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.ciValue, ciValue) || other.ciValue == ciValue) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            const DeepCollectionEquality()
                .equals(other._externalLinks, _externalLinks) &&
            const DeepCollectionEquality().equals(other._snsLinks, _snsLinks) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.accountStatus, accountStatus) ||
                other.accountStatus == accountStatus) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userNumber,
      userId,
      email,
      phoneNumber,
      ciValue,
      nickname,
      profileImageUrl,
      bio,
      const DeepCollectionEquality().hash(_externalLinks),
      const DeepCollectionEquality().hash(_snsLinks),
      isVerified,
      isPremium,
      isActive,
      accountStatus,
      createdAt,
      updatedAt,
      lastLoginAt);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final int userNumber,
      required final String userId,
      required final String email,
      final String? phoneNumber,
      final String? ciValue,
      required final String nickname,
      final String? profileImageUrl,
      final String? bio,
      final List<ExternalLink> externalLinks,
      final List<SnsLink> snsLinks,
      final bool isVerified,
      final bool isPremium,
      final bool isActive,
      final AccountStatus accountStatus,
      required final DateTime createdAt,
      final DateTime? updatedAt,
      final DateTime? lastLoginAt}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

// 식별자 — userNumber는 서버 AUTO_INCREMENT, 앱에서 생성 안 함
  @override
  int get userNumber;
  @override
  String get userId; // @ 없이 저장, UI에서 @ 붙임
  @override
  String get email; // 선택
  @override
  String? get phoneNumber;
  @override
  String? get ciValue; // 본인인증 연계정보, 추후 수령
// 프로필
  @override
  String get nickname;
  @override
  String? get profileImageUrl;
  @override
  String? get bio; // 링크
  @override
  List<ExternalLink> get externalLinks;
  @override
  List<SnsLink> get snsLinks; // 계정 상태
  @override
  bool get isVerified;
  @override
  bool get isPremium;
  @override
  bool get isActive;
  @override
  AccountStatus get accountStatus; // 타임스탬프 — 서버 UTC, 앱 읽기 전용
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get lastLoginAt;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
