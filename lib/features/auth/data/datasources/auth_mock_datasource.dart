import 'package:cos_buddy/features/auth/domain/repositories/auth_repository.dart';

// 백엔드 없을 때 여기에서 가짜 데이터 반환
class AuthMockDatasource implements AuthRepository {
  @override
  Future<UserModel> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    return UserModel(id: 'mock_001', email: email, nickname: '코스버디유저');
  }
}