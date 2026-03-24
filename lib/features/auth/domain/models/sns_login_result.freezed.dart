// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sns_login_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SnsLoginResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) loggedIn,
    required TResult Function(
            String providerEmail, SnsProvider provider, String providerUserId)
        needsRegistration,
    required TResult Function() cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? loggedIn,
    TResult? Function(
            String providerEmail, SnsProvider provider, String providerUserId)?
        needsRegistration,
    TResult? Function()? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? loggedIn,
    TResult Function(
            String providerEmail, SnsProvider provider, String providerUserId)?
        needsRegistration,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_NeedsRegistration value) needsRegistration,
    required TResult Function(_Cancelled value) cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_NeedsRegistration value)? needsRegistration,
    TResult? Function(_Cancelled value)? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_NeedsRegistration value)? needsRegistration,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnsLoginResultCopyWith<$Res> {
  factory $SnsLoginResultCopyWith(
          SnsLoginResult value, $Res Function(SnsLoginResult) then) =
      _$SnsLoginResultCopyWithImpl<$Res, SnsLoginResult>;
}

/// @nodoc
class _$SnsLoginResultCopyWithImpl<$Res, $Val extends SnsLoginResult>
    implements $SnsLoginResultCopyWith<$Res> {
  _$SnsLoginResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnsLoginResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$SnsLoginResultCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnsLoginResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoggedInImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of SnsLoginResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$LoggedInImpl implements _LoggedIn {
  const _$LoggedInImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'SnsLoginResult.loggedIn(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of SnsLoginResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      __$$LoggedInImplCopyWithImpl<_$LoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) loggedIn,
    required TResult Function(
            String providerEmail, SnsProvider provider, String providerUserId)
        needsRegistration,
    required TResult Function() cancelled,
  }) {
    return loggedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? loggedIn,
    TResult? Function(
            String providerEmail, SnsProvider provider, String providerUserId)?
        needsRegistration,
    TResult? Function()? cancelled,
  }) {
    return loggedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? loggedIn,
    TResult Function(
            String providerEmail, SnsProvider provider, String providerUserId)?
        needsRegistration,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_NeedsRegistration value) needsRegistration,
    required TResult Function(_Cancelled value) cancelled,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_NeedsRegistration value)? needsRegistration,
    TResult? Function(_Cancelled value)? cancelled,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_NeedsRegistration value)? needsRegistration,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements SnsLoginResult {
  const factory _LoggedIn(final UserModel user) = _$LoggedInImpl;

  UserModel get user;

  /// Create a copy of SnsLoginResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NeedsRegistrationImplCopyWith<$Res> {
  factory _$$NeedsRegistrationImplCopyWith(_$NeedsRegistrationImpl value,
          $Res Function(_$NeedsRegistrationImpl) then) =
      __$$NeedsRegistrationImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String providerEmail, SnsProvider provider, String providerUserId});
}

/// @nodoc
class __$$NeedsRegistrationImplCopyWithImpl<$Res>
    extends _$SnsLoginResultCopyWithImpl<$Res, _$NeedsRegistrationImpl>
    implements _$$NeedsRegistrationImplCopyWith<$Res> {
  __$$NeedsRegistrationImplCopyWithImpl(_$NeedsRegistrationImpl _value,
      $Res Function(_$NeedsRegistrationImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnsLoginResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? providerEmail = null,
    Object? provider = null,
    Object? providerUserId = null,
  }) {
    return _then(_$NeedsRegistrationImpl(
      providerEmail: null == providerEmail
          ? _value.providerEmail
          : providerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as SnsProvider,
      providerUserId: null == providerUserId
          ? _value.providerUserId
          : providerUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NeedsRegistrationImpl implements _NeedsRegistration {
  const _$NeedsRegistrationImpl(
      {required this.providerEmail,
      required this.provider,
      required this.providerUserId});

  @override
  final String providerEmail;
  @override
  final SnsProvider provider;
  @override
  final String providerUserId;

  @override
  String toString() {
    return 'SnsLoginResult.needsRegistration(providerEmail: $providerEmail, provider: $provider, providerUserId: $providerUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NeedsRegistrationImpl &&
            (identical(other.providerEmail, providerEmail) ||
                other.providerEmail == providerEmail) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.providerUserId, providerUserId) ||
                other.providerUserId == providerUserId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, providerEmail, provider, providerUserId);

  /// Create a copy of SnsLoginResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NeedsRegistrationImplCopyWith<_$NeedsRegistrationImpl> get copyWith =>
      __$$NeedsRegistrationImplCopyWithImpl<_$NeedsRegistrationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) loggedIn,
    required TResult Function(
            String providerEmail, SnsProvider provider, String providerUserId)
        needsRegistration,
    required TResult Function() cancelled,
  }) {
    return needsRegistration(providerEmail, provider, providerUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? loggedIn,
    TResult? Function(
            String providerEmail, SnsProvider provider, String providerUserId)?
        needsRegistration,
    TResult? Function()? cancelled,
  }) {
    return needsRegistration?.call(providerEmail, provider, providerUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? loggedIn,
    TResult Function(
            String providerEmail, SnsProvider provider, String providerUserId)?
        needsRegistration,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (needsRegistration != null) {
      return needsRegistration(providerEmail, provider, providerUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_NeedsRegistration value) needsRegistration,
    required TResult Function(_Cancelled value) cancelled,
  }) {
    return needsRegistration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_NeedsRegistration value)? needsRegistration,
    TResult? Function(_Cancelled value)? cancelled,
  }) {
    return needsRegistration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_NeedsRegistration value)? needsRegistration,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (needsRegistration != null) {
      return needsRegistration(this);
    }
    return orElse();
  }
}

abstract class _NeedsRegistration implements SnsLoginResult {
  const factory _NeedsRegistration(
      {required final String providerEmail,
      required final SnsProvider provider,
      required final String providerUserId}) = _$NeedsRegistrationImpl;

  String get providerEmail;
  SnsProvider get provider;
  String get providerUserId;

  /// Create a copy of SnsLoginResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NeedsRegistrationImplCopyWith<_$NeedsRegistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelledImplCopyWith<$Res> {
  factory _$$CancelledImplCopyWith(
          _$CancelledImpl value, $Res Function(_$CancelledImpl) then) =
      __$$CancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelledImplCopyWithImpl<$Res>
    extends _$SnsLoginResultCopyWithImpl<$Res, _$CancelledImpl>
    implements _$$CancelledImplCopyWith<$Res> {
  __$$CancelledImplCopyWithImpl(
      _$CancelledImpl _value, $Res Function(_$CancelledImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnsLoginResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CancelledImpl implements _Cancelled {
  const _$CancelledImpl();

  @override
  String toString() {
    return 'SnsLoginResult.cancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) loggedIn,
    required TResult Function(
            String providerEmail, SnsProvider provider, String providerUserId)
        needsRegistration,
    required TResult Function() cancelled,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? loggedIn,
    TResult? Function(
            String providerEmail, SnsProvider provider, String providerUserId)?
        needsRegistration,
    TResult? Function()? cancelled,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? loggedIn,
    TResult Function(
            String providerEmail, SnsProvider provider, String providerUserId)?
        needsRegistration,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_NeedsRegistration value) needsRegistration,
    required TResult Function(_Cancelled value) cancelled,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_NeedsRegistration value)? needsRegistration,
    TResult? Function(_Cancelled value)? cancelled,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_NeedsRegistration value)? needsRegistration,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class _Cancelled implements SnsLoginResult {
  const factory _Cancelled() = _$CancelledImpl;
}
