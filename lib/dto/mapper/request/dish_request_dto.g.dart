// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../request/dish_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DishRequestDto _$DishRequestDtoFromJson(Map<String, dynamic> json) =>
    DishRequestDto(
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      photoBase64: json['photoBase64'] as String?,
      restaurantId: (json['restaurantId'] as num).toInt(),
    );

Map<String, dynamic> _$DishRequestDtoToJson(DishRequestDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'photoBase64': instance.photoBase64,
      'restaurantId': instance.restaurantId,
    };
