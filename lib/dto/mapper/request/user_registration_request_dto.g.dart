// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../request/user_registration_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRegistrationRequestDto _$UserRegistrationRequestDtoFromJson(
        Map<String, dynamic> json) =>
    UserRegistrationRequestDto(
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      birthDate: dateFromJson(json['birthDate'] as String),
      phoneNumber: json['phoneNumber'] as String,
      avatarBase64: json['avatarBase64'] as String?,
    );

Map<String, dynamic> _$UserRegistrationRequestDtoToJson(
        UserRegistrationRequestDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'phoneNumber': instance.phoneNumber,
      'avatarBase64': instance.avatarBase64,
      'birthDate': dateToJson(instance.birthDate),
      'email': instance.email,
      'password': instance.password,
    };
