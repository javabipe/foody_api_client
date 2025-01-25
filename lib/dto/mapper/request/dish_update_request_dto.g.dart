// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../request/dish_update_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DishUpdateRequestDto _$DishUpdateRequestDtoFromJson(
        Map<String, dynamic> json) =>
    DishUpdateRequestDto(
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      photoBase64: json['photoBase64'] as String?,
    );

Map<String, dynamic> _$DishUpdateRequestDtoToJson(
        DishUpdateRequestDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'photoBase64': instance.photoBase64,
    };
