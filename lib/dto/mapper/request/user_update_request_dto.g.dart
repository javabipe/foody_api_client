// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../request/user_update_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserUpdateRequestDto _$UserUpdateRequestDtoFromJson(
        Map<String, dynamic> json) =>
    UserUpdateRequestDto(
      name: json['name'] as String,
      surname: json['surname'] as String,
      birthDate: dateFromJson(json['birthDate'] as String),
      phoneNumber: json['phoneNumber'] as String,
      avatarBase64: json['avatarBase64'] as String?,
    );

Map<String, dynamic> _$UserUpdateRequestDtoToJson(
        UserUpdateRequestDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'phoneNumber': instance.phoneNumber,
      'avatarBase64': instance.avatarBase64,
      'birthDate': dateToJson(instance.birthDate),
    };
