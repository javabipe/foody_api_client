// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../request/restaurant_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantRequestDto _$RestaurantRequestDtoFromJson(
        Map<String, dynamic> json) =>
    RestaurantRequestDto(
      name: json['name'] as String,
      description: json['description'] as String,
      phoneNumber: json['phoneNumber'] as String,
      street: json['street'] as String,
      civicNumber: json['civicNumber'] as String,
      city: json['city'] as String,
      province: json['province'] as String,
      postalCode: json['postalCode'] as String,
      seats: (json['seats'] as num).toInt(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      photoBase64: json['photoBase64'] as String?,
    );

Map<String, dynamic> _$RestaurantRequestDtoToJson(
        RestaurantRequestDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'phoneNumber': instance.phoneNumber,
      'street': instance.street,
      'civicNumber': instance.civicNumber,
      'city': instance.city,
      'province': instance.province,
      'postalCode': instance.postalCode,
      'seats': instance.seats,
      'categories': instance.categories,
      'photoBase64': instance.photoBase64,
    };
