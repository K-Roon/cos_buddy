import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/mdoels/user_model.dart';

@riverpod
class SnsAuthNotifier extends _$SnsAuthNotifier {

  /// Google/Apple 로그인 시도
  /// 기존 계정이 없으면 → 회원가입 화면으로 이동하며 이메일 자동입력
  Future<SnsLoginResult> signInWithGoogle() async {
    final googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) return SnsLoginResult.cancelled();

    final snsEmail = googleUser.email; // SNS 이메일 자동입력용

    // 서버에 SNS 연동 계정 존재 여부 확인
    final existing = await ref
        .read(authRepositoryProvider)
        .findBySnsProvider(
      provider: SnsProvider.google,
      providerUserId: googleUser.id,
    );

    if (existing != null) {
      // 기존 연동 계정 있음 → 바로 로그인
      return SnsLoginResult.loggedIn(existing);
    } else {
      // 연동 계정 없음 → 회원가입 화면으로, 이메일 자동입력
      return SnsLoginResult.needsRegistration(
        providerEmail: snsEmail,      // 회원가입 이메일 필드에 자동입력
        provider: SnsProvider.google,
        providerUserId: googleUser.id,
      );
    }
  }
}

/// SNS 로그인 결과 sealed class
@freezed
class SnsLoginResult with _$SnsLoginResult {
  const factory SnsLoginResult.loggedIn(UserModel user) = _LoggedIn;
  const factory SnsLoginResult.needsRegistration({
    required String providerEmail,
    required SnsProvider provider,
    required String providerUserId,
  }) = _NeedsRegistration;
  const factory SnsLoginResult.cancelled() = _Cancelled;
}