// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../response/detailed_restaurant_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailedRestaurantResponseDto _$DetailedRestaurantResponseDtoFromJson(
        Map<String, dynamic> json) =>
    DetailedRestaurantResponseDto(
      averageRating: (json['averageRating'] as num).toDouble(),
      dishes: (json['dishes'] as List<dynamic>)
          .map((e) => DishResponseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      sittingTimes: (json['sittingTimes'] as List<dynamic>)
          .map(
              (e) => SittingTimeResponseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => ReviewResponseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      phoneNumber: json['phoneNumber'] as String,
      street: json['street'] as String,
      civicNumber: json['civicNumber'] as String,
      city: json['city'] as String,
      province: json['province'] as String,
      postalCode: json['postalCode'] as String,
      seats: (json['seats'] as num).toInt(),
      approved: json['approved'] as bool,
      restaurateurId: (json['restaurateurId'] as num).toInt(),
      restaurateurEmail: json['restaurateurEmail'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoryResponseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$DetailedRestaurantResponseDtoToJson(
        DetailedRestaurantResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'phoneNumber': instance.phoneNumber,
      'street': instance.street,
      'civicNumber': instance.civicNumber,
      'city': instance.city,
      'province': instance.province,
      'postalCode': instance.postalCode,
      'seats': instance.seats,
      'approved': instance.approved,
      'restaurateurId': instance.restaurateurId,
      'restaurateurEmail': instance.restaurateurEmail,
      'categories': instance.categories,
      'photoUrl': instance.photoUrl,
      'averageRating': instance.averageRating,
      'sittingTimes': instance.sittingTimes,
      'dishes': instance.dishes,
      'reviews': instance.reviews,
    };
