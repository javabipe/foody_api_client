// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../response/review_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewResponseDto _$ReviewResponseDtoFromJson(Map<String, dynamic> json) =>
    ReviewResponseDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      rating: (json['rating'] as num).toInt(),
      restaurantId: (json['restaurantId'] as num).toInt(),
      dishId: (json['dishId'] as num?)?.toInt(),
      customerId: (json['customerId'] as num).toInt(),
      customerName: json['customerName'] as String,
      customerSurname: json['customerSurname'] as String,
      customerAvatarUrl: json['customerAvatarUrl'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$ReviewResponseDtoToJson(ReviewResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'rating': instance.rating,
      'restaurantId': instance.restaurantId,
      'dishId': instance.dishId,
      'customerId': instance.customerId,
      'customerName': instance.customerName,
      'customerSurname': instance.customerSurname,
      'customerAvatarUrl': instance.customerAvatarUrl,
      'createdAt': instance.createdAt.toIso8601String(),
    };
