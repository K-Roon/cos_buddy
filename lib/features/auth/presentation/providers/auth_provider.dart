import 'package:cos_buddy/features/auth/domain/models/user_model.dart';
import 'package:cos_buddy/shared/providers/service_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/utils/password_hasher.dart';

final authStateProvider = StreamProvider<UserModel?>((ref) {
  return ref.watch(authRepositoryProvider).authStateChanges;
});

/// 로그인 / 회원가입 액션
final authNotifierProvider =
    AsyncNotifierProvider<AuthNotifier, UserModel?>(AuthNotifier.new);

class AuthNotifier extends AsyncNotifier<UserModel?> {
  @override
  Future<UserModel?> build() async {
    return ref.watch(authRepositoryProvider).getCurrentUser();
  }

  Future<void> login(String email, String password) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final hash = PasswordHasher.hashForTransmission(password);
      return ref.read(authRepositoryProvider).login(
        email: email,
        passwordHash: hash,
      );
    });
  }

  Future<void> register({
    required String userId,
    required String email,
    required String password,
    required String nickname,
    String? phoneNumber,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final hash = PasswordHasher.hashForTransmission(password);
      return ref.read(authRepositoryProvider).register(
        userId: userId,
        email: email,
        passwordHash: hash,
        nickname: nickname,
        phoneNumber: phoneNumber,
      );
    });
  }

  Future<void> logout() async {
    await ref.read(authRepositoryProvider).logout();
    state = const AsyncValue.data(null);
  }
}