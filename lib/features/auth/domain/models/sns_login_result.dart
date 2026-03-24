import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart';

part 'sns_login_result.freezed.dart';

@freezed
class SnsLoginResult with _$SnsLoginResult {
  const factory SnsLoginResult.loggedIn(
      UserModel user,
      ) = _LoggedIn;

  const factory SnsLoginResult.needsRegistration({
    required String      providerEmail,
    required SnsProvider provider,
    required String      providerUserId,
  }) = _NeedsRegistration;

  const factory SnsLoginResult.cancelled() = _Cancelled;
}