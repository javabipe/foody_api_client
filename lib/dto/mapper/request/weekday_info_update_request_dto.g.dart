// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../request/weekday_info_update_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeekdayInfoUpdateRequestDto _$WeekdayInfoUpdateRequestDtoFromJson(
        Map<String, dynamic> json) =>
    WeekdayInfoUpdateRequestDto(
      startLaunch: timeFromJsonNullable(json['startLaunch'] as String?),
      endLaunch: timeFromJsonNullable(json['endLaunch'] as String?),
      startDinner: timeFromJsonNullable(json['startDinner'] as String?),
      endDinner: timeFromJsonNullable(json['endDinner'] as String?),
      sittingTimeStep:
          $enumDecode(_$SittingTimeStepEnumMap, json['sittingTimeStep']),
    );

Map<String, dynamic> _$WeekdayInfoUpdateRequestDtoToJson(
        WeekdayInfoUpdateRequestDto instance) =>
    <String, dynamic>{
      'startLaunch': timeToJsonNullable(instance.startLaunch),
      'endLaunch': timeToJsonNullable(instance.endLaunch),
      'startDinner': timeToJsonNullable(instance.startDinner),
      'endDinner': timeToJsonNullable(instance.endDinner),
      'sittingTimeStep': _$SittingTimeStepEnumMap[instance.sittingTimeStep]!,
    };

const _$SittingTimeStepEnumMap = {
  SittingTimeStep.FIFTEEN: 'FIFTEEN',
  SittingTimeStep.THIRTY: 'THIRTY',
  SittingTimeStep.SIXTY: 'SIXTY',
};
