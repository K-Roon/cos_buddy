import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

enum SnsProvider { google, apple }

enum AccountStatus { active, suspended, deleted }

@freezed
class ExternalLink with _$ExternalLink {
  const factory ExternalLink({
    required int displayOrder, // 0~9
    required String label,
    required String url,
  }) = _ExternalLink;

  factory ExternalLink.fromJson(Map<String, dynamic> json) =>
      _$ExternalLinkFromJson(json);
}

@freezed
class SnsLink with _$SnsLink {
  const factory SnsLink({
    required SnsProvider provider,
    required String providerUserId,
    String? providerEmail,
  }) = _SnsLink;

  factory SnsLink.fromJson(Map<String, dynamic> json) =>
      _$SnsLinkFromJson(json);
}

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    // 식별자 — userNumber는 서버 AUTO_INCREMENT, 앱에서 생성 안 함
    required int userNumber,
    required String userId,   // @ 없이 저장, UI에서 @ 붙임
    required String email,

    // 선택
    String? phoneNumber,
    String? ciValue,          // 본인인증 연계정보, 추후 수령

    // 프로필
    required String nickname,
    String? profileImageUrl,
    String? bio,

    // 링크
    @Default([]) List<ExternalLink> externalLinks,
    @Default([]) List<SnsLink> snsLinks,

    // 계정 상태
    @Default(false) bool isVerified,
    @Default(false) bool isPremium,
    @Default(true) bool isActive,
    @Default(AccountStatus.active)   AccountStatus accountStatus,

    // 타임스탬프 — 서버 UTC, 앱 읽기 전용
    required DateTime createdAt,
    DateTime? updatedAt,
    DateTime? lastLoginAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}