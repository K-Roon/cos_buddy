import 'dart:convert';
import 'package:crypto/crypto.dart';

class PasswordHasher {
  PasswordHasher._();

  static const String _appSalt = 'cosbuddy_v1';

  /// 서버 전송 전 클라이언트 SHA-256 1차 해시
  /// 서버는 수신 후 bcrypt 2차 해시 후 저장
  static String hashForTransmission(String plainPassword) {
    final bytes = utf8.encode('$_appSalt:$plainPassword');
    return sha256.convert(bytes).toString();
  }
}