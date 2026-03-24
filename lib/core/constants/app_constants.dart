class AppConstants {
  AppConstants._();

  static const String androidPackageName = 'com.kroon.cos_buddy';
  static const String iosAppId = 'XXXXXXXXXX'; // 배포 후 입력 예정

  static const int maxExternalLinks = 10;
  static const int maxBioLength = 150;
  static const int maxPostImages = 20; // 게시글 최대 첨부 수

  // 코스버디 프리미엄
  static const String premiumProductId = 'cosbuddy_premium_monthly';
  static const bool   isPremiumEnabled = false; // 세금 처리 후 true로

  // JWT
  static const String accessTokenKey = 'access_token';
  static const String refreshTokenKey = 'refresh_token';

  ///TODO:: API — 백엔드 완성 후 실제 URL 입력
  static const String baseUrl = 'https://api.cos_buddy.kroon';
  static const String devBaseUrl = 'http://localhost:8080';
}