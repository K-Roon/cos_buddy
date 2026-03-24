import '../models/user_model.dart';

abstract class AuthRepository {
  Future<UserModel> login({
    required String email,
    required String passwordHash,
  });

  Future<UserModel> register({
    required String userId,
    required String email,
    required String passwordHash,
    required String nickname,
    String? phoneNumber,
  });

  Future<void> logout();

  Future<UserModel?> findBySnsProvider({
    required SnsProvider provider,
    required String      providerUserId,
  });

  Future<UserModel?> getCurrentUser();

  Stream<UserModel?> get authStateChanges;
}