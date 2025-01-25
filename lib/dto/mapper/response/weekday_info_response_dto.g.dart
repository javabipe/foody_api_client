// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../response/weekday_info_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeekdayInfoResponseDto _$WeekdayInfoResponseDtoFromJson(
        Map<String, dynamic> json) =>
    WeekdayInfoResponseDto(
      id: (json['id'] as num).toInt(),
      weekDay: (json['weekDay'] as num).toInt(),
      startLaunch: timeFromJsonNullable(json['startLaunch'] as String?),
      endLaunch: timeFromJsonNullable(json['endLaunch'] as String?),
      startDinner: timeFromJsonNullable(json['startDinner'] as String?),
      endDinner: timeFromJsonNullable(json['endDinner'] as String?),
      sittingTimeStep:
          $enumDecode(_$SittingTimeStepEnumMap, json['sittingTimeStep']),
      restaurantId: (json['restaurantId'] as num).toInt(),
    );

Map<String, dynamic> _$WeekdayInfoResponseDtoToJson(
        WeekdayInfoResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'weekDay': instance.weekDay,
      'startLaunch': timeToJsonNullable(instance.startLaunch),
      'endLaunch': timeToJsonNullable(instance.endLaunch),
      'startDinner': timeToJsonNullable(instance.startDinner),
      'endDinner': timeToJsonNullable(instance.endDinner),
      'sittingTimeStep': _$SittingTimeStepEnumMap[instance.sittingTimeStep]!,
      'restaurantId': instance.restaurantId,
    };

const _$SittingTimeStepEnumMap = {
  SittingTimeStep.FIFTEEN: 'FIFTEEN',
  SittingTimeStep.THIRTY: 'THIRTY',
  SittingTimeStep.SIXTY: 'SIXTY',
};
