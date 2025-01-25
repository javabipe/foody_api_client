// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../response/category_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryResponseDto _$CategoryResponseDtoFromJson(Map<String, dynamic> json) =>
    CategoryResponseDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$CategoryResponseDtoToJson(
        CategoryResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
