// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../response/employee_user_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeUserResponseDto _$EmployeeUserResponseDtoFromJson(
        Map<String, dynamic> json) =>
    EmployeeUserResponseDto(
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
      employerRestaurantId: (json['employerRestaurantId'] as num).toInt(),
    );

Map<String, dynamic> _$EmployeeUserResponseDtoToJson(
        EmployeeUserResponseDto instance) =>
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
      'employerRestaurantId': instance.employerRestaurantId,
    };

const _$RoleEnumMap = {
  Role.ADMIN: 'ADMIN',
  Role.MODERATOR: 'MODERATOR',
  Role.RESTAURATEUR: 'RESTAURATEUR',
  Role.COOK: 'COOK',
  Role.WAITER: 'WAITER',
  Role.CUSTOMER: 'CUSTOMER',
};
