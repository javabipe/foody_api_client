// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../request/weekday_info_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeekdayInfoRequestDto _$WeekdayInfoRequestDtoFromJson(
        Map<String, dynamic> json) =>
    WeekdayInfoRequestDto(
      startLaunch: timeFromJsonNullable(json['startLaunch'] as String?),
      endLaunch: timeFromJsonNullable(json['endLaunch'] as String?),
      startDinner: timeFromJsonNullable(json['startDinner'] as String?),
      endDinner: timeFromJsonNullable(json['endDinner'] as String?),
      sittingTimeStep:
          $enumDecode(_$SittingTimeStepEnumMap, json['sittingTimeStep']),
      weekDay: (json['weekDay'] as num).toInt(),
      restaurantId: (json['restaurantId'] as num).toInt(),
    );

Map<String, dynamic> _$WeekdayInfoRequestDtoToJson(
        WeekdayInfoRequestDto instance) =>
    <String, dynamic>{
      'startLaunch': timeToJsonNullable(instance.startLaunch),
      'endLaunch': timeToJsonNullable(instance.endLaunch),
      'startDinner': timeToJsonNullable(instance.startDinner),
      'endDinner': timeToJsonNullable(instance.endDinner),
      'sittingTimeStep': _$SittingTimeStepEnumMap[instance.sittingTimeStep]!,
      'weekDay': instance.weekDay,
      'restaurantId': instance.restaurantId,
    };

const _$SittingTimeStepEnumMap = {
  SittingTimeStep.FIFTEEN: 'FIFTEEN',
  SittingTimeStep.THIRTY: 'THIRTY',
  SittingTimeStep.SIXTY: 'SIXTY',
};
