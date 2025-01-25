// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../response/dish_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DishResponseDto _$DishResponseDtoFromJson(Map<String, dynamic> json) =>
    DishResponseDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      photoUrl: json['photoUrl'] as String?,
      restaurantId: (json['restaurantId'] as num).toInt(),
      averageRating: (json['averageRating'] as num).toDouble(),
    );

Map<String, dynamic> _$DishResponseDtoToJson(DishResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'photoUrl': instance.photoUrl,
      'restaurantId': instance.restaurantId,
      'averageRating': instance.averageRating,
    };
