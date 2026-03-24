// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExternalLinkImpl _$$ExternalLinkImplFromJson(Map<String, dynamic> json) =>
    _$ExternalLinkImpl(
      displayOrder: (json['displayOrder'] as num).toInt(),
      label: json['label'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$ExternalLinkImplToJson(_$ExternalLinkImpl instance) =>
    <String, dynamic>{
      'displayOrder': instance.displayOrder,
      'label': instance.label,
      'url': instance.url,
    };

_$SnsLinkImpl _$$SnsLinkImplFromJson(Map<String, dynamic> json) =>
    _$SnsLinkImpl(
      provider: $enumDecode(_$SnsProviderEnumMap, json['provider']),
      providerUserId: json['providerUserId'] as String,
      providerEmail: json['providerEmail'] as String?,
    );

Map<String, dynamic> _$$SnsLinkImplToJson(_$SnsLinkImpl instance) =>
    <String, dynamic>{
      'provider': _$SnsProviderEnumMap[instance.provider]!,
      'providerUserId': instance.providerUserId,
      'providerEmail': instance.providerEmail,
    };

const _$SnsProviderEnumMap = {
  SnsProvider.google: 'google',
  SnsProvider.apple: 'apple',
};

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      userNumber: (json['userNumber'] as num).toInt(),
      userId: json['userId'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      ciValue: json['ciValue'] as String?,
      nickname: json['nickname'] as String,
      profileImageUrl: json['profileImageUrl'] as String?,
      bio: json['bio'] as String?,
      externalLinks: (json['externalLinks'] as List<dynamic>?)
              ?.map((e) => ExternalLink.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      snsLinks: (json['snsLinks'] as List<dynamic>?)
              ?.map((e) => SnsLink.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isVerified: json['isVerified'] as bool? ?? false,
      isPremium: json['isPremium'] as bool? ?? false,
      isActive: json['isActive'] as bool? ?? true,
      accountStatus:
          $enumDecodeNullable(_$AccountStatusEnumMap, json['accountStatus']) ??
              AccountStatus.active,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      lastLoginAt: json['lastLoginAt'] == null
          ? null
          : DateTime.parse(json['lastLoginAt'] as String),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'userNumber': instance.userNumber,
      'userId': instance.userId,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'ciValue': instance.ciValue,
      'nickname': instance.nickname,
      'profileImageUrl': instance.profileImageUrl,
      'bio': instance.bio,
      'externalLinks': instance.externalLinks,
      'snsLinks': instance.snsLinks,
      'isVerified': instance.isVerified,
      'isPremium': instance.isPremium,
      'isActive': instance.isActive,
      'accountStatus': _$AccountStatusEnumMap[instance.accountStatus]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'lastLoginAt': instance.lastLoginAt?.toIso8601String(),
    };

const _$AccountStatusEnumMap = {
  AccountStatus.active: 'active',
  AccountStatus.suspended: 'suspended',
  AccountStatus.deleted: 'deleted',
};
