// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../response/user_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponseDto _$UserResponseDtoFromJson(Map<String, dynamic> json) =>
    UserResponseDto(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      phoneNumber: json['phoneNumber'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      active: json['active'] as bool,
      firebaseCustomToken: json['firebaseCustomToken'] as String?,
    );

Map<String, dynamic> _$UserResponseDtoToJson(UserResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'surname': instance.surname,
      'birthDate': instance.birthDate.toIso8601String(),
      'phoneNumber': instance.phoneNumber,
      'avatarUrl': instance.avatarUrl,
      'role': _$RoleEnumMap[instance.role]!,
      'active': instance.active,
      'firebaseCustomToken': instance.firebaseCustomToken,
    };

const _$RoleEnumMap = {
  Role.ADMIN: 'ADMIN',
  Role.MODERATOR: 'MODERATOR',
  Role.RESTAURATEUR: 'RESTAURATEUR',
  Role.COOK: 'COOK',
  Role.WAITER: 'WAITER',
  Role.CUSTOMER: 'CUSTOMER',
};
