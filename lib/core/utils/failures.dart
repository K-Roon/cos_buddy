// lib/core/errors/failures.dart
abstract class Failure implements Exception {
  final String message;
  final int? statusCode;
  const Failure(this.message, {this.statusCode});

  @override
  String toString() => message;
}

class NetworkFailure extends Failure {
  const NetworkFailure([super.message = '네트워크 연결을 확인해주세요.']);
}

class AuthFailure extends Failure {
  const AuthFailure([super.message = '이메일 또는 비밀번호가 올바르지 않습니다.']);
}

class DuplicateFailure extends Failure {
  const DuplicateFailure([super.message = '이미 사용 중인 정보입니다.']);
}

class ServerFailure extends Failure {
  const ServerFailure([super.message = '서버 오류가 발생했습니다. 잠시 후 다시 시도해주세요.']);
}

class UnknownFailure extends Failure {
  const UnknownFailure([super.message = '알 수 없는 오류가 발생했습니다.']);
}