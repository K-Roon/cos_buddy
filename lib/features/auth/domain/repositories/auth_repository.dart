abstract class AuthRepository {
  Future<UserModel> login(String email, String password);
  Future<UserModel> register(String email, String password, String nickname);
  Future<void> logout;
  Stream<UserMdoel?> get authStateChanges;
}