// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../request/booking_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingRequestDto _$BookingRequestDtoFromJson(Map<String, dynamic> json) =>
    BookingRequestDto(
      date: dateFromJson(json['date'] as String),
      seats: (json['seats'] as num).toInt(),
      sittingTimeId: (json['sittingTimeId'] as num).toInt(),
      restaurantId: (json['restaurantId'] as num).toInt(),
    );

Map<String, dynamic> _$BookingRequestDtoToJson(BookingRequestDto instance) =>
    <String, dynamic>{
      'date': dateToJson(instance.date),
      'seats': instance.seats,
      'sittingTimeId': instance.sittingTimeId,
      'restaurantId': instance.restaurantId,
    };
