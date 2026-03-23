import 'package:freezed_annotation/freezed_annotation.dart';

/// SNS 연동 공급자
enum SnsProvider { google, apple }

enum AccountStatus { active, suspend, deleted }

/// 외부 링크 1개
@freezed
class ExternalLink with _$ExternalLink {
  const factory ExternalLink({
    required int displayOrder,
    required String label,
    required String url,
  }) = _ExternalLink;

  factory ExternalLink.fromJson(Map<String, dynamic> json) =>
      _$ExternalLinkFromJson(json);
}

/// SNS 연동 계정 정보
@freezed
class SnsLink with _$SnsLink {
  const factory SnsLink({
    required SnsProvider provider,
    required String ProviderUserId,
    /// SNS에서 제공된 이메일 (자동 입력에 활용)
    String? providerEmail,
  }) = _SnsLink;

  factory SnsLink.fromJson(Map<String, dynamic> json) =>
      _$SnsLinkFromJson(json);
}

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    // == 식별자 ==
    required int userNumber,  // DB AUTO_INCREMENT PK
    required String userId,   // @고유아이디 (예: cosplayer_kim)
    required String email,    // 로그인용 이메일

    String? phoneNumber,      // 선택 입력, E.164 형식 권장
    String? ciValue,

    required String nickname,         // 표시 이름
    String? profileImageUrl,          // Cloud Storage URL
    String? bio,                      // 자기소개 (최대 150자 권장)

    @Default([]) List<ExternalLink> externalLinks,

    @Default([]) List<SnsLink> snsLinks,

    @Default(false) bool isVerified,        // 이메일 인증 완료 여부
    @Default(false) bool isPremium,         // 코스버디 프리미엄 (현재 비활성)
    @Default(true)  bool isActive,          // 계정 활성 여부
    @Default(AccountStatus.active) AccountStatus accountStatus,

    required DateTime createdAt,
    DateTime? updatedAt,
    DateTime? lastLoginAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
