// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../response/sitting_time_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SittingTimeResponseDto _$SittingTimeResponseDtoFromJson(
        Map<String, dynamic> json) =>
    SittingTimeResponseDto(
      id: (json['id'] as num).toInt(),
      start: timeFromJson(json['start'] as String),
      end: timeFromJson(json['end'] as String),
      weekDayInfoId: (json['weekDayInfoId'] as num).toInt(),
    );

Map<String, dynamic> _$SittingTimeResponseDtoToJson(
        SittingTimeResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start': timeToJson(instance.start),
      'end': timeToJson(instance.end),
      'weekDayInfoId': instance.weekDayInfoId,
    };
