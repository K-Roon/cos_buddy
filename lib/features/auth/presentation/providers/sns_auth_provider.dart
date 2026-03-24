import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../domain/models/sns_login_result.dart';
import '../../domain/models/user_model.dart';
import '../../../../shared/providers/service_providers.dart';

final snsAuthProvider =
AsyncNotifierProvider<SnsAuthNotifier, void>(SnsAuthNotifier.new);

class SnsAuthNotifier extends AsyncNotifier<void> {
  @override
  Future<void> build() async {}

  Future<SnsLoginResult> signInWithGoogle() async {
    final googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) return const SnsLoginResult.cancelled();

    final existing = await ref
        .read(authRepositoryProvider)
        .findBySnsProvider(
      provider:       SnsProvider.google,
      providerUserId: googleUser.id,
    );

    if (existing != null) return SnsLoginResult.loggedIn(existing);

    // 기존 계정 없음 → 회원가입 유도, 이메일 자동입력
    return SnsLoginResult.needsRegistration(
      providerEmail:  googleUser.email,
      provider:       SnsProvider.google,
      providerUserId: googleUser.id,
    );
  }
}