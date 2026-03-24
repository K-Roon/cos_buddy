import 'dart:convert';
import 'package:crypto/crypto.dart';

class PasswordHasher {
  PasswordHasher._();

  static const String _appSalt = 'cosbuddy_v1';

  static String hashForTransmission(String plainPassword) {
    final bytes = utf8.encode('$_appSalt:$plainPassword');
    return sha256.convert(bytes).toString();
  }
}