// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../request/review_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewRequestDto _$ReviewRequestDtoFromJson(Map<String, dynamic> json) =>
    ReviewRequestDto(
      title: json['title'] as String,
      description: json['description'] as String,
      rating: (json['rating'] as num).toInt(),
      restaurantId: (json['restaurantId'] as num).toInt(),
      dishId: (json['dishId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ReviewRequestDtoToJson(ReviewRequestDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'rating': instance.rating,
      'restaurantId': instance.restaurantId,
      'dishId': instance.dishId,
    };
