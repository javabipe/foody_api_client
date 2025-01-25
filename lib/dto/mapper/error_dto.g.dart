// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorDto _$ErrorDtoFromJson(Map<String, dynamic> json) => ErrorDto(
      timestamp: DateTime.parse(json['timestamp'] as String),
      status: (json['status'] as num).toInt(),
      error: json['error'] as String,
      message: json['message'] as Object,
      path: json['path'] as String,
    );

Map<String, dynamic> _$ErrorDtoToJson(ErrorDto instance) => <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'status': instance.status,
      'error': instance.error,
      'message': instance.message,
      'path': instance.path,
    };
