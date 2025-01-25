// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../response/booking_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingResponseDto _$BookingResponseDtoFromJson(Map<String, dynamic> json) =>
    BookingResponseDto(
      id: (json['id'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      seats: (json['seats'] as num).toInt(),
      sittingTime: SittingTimeResponseDto.fromJson(
          json['sittingTime'] as Map<String, dynamic>),
      customer:
          UserResponseDto.fromJson(json['customer'] as Map<String, dynamic>),
      restaurant: RestaurantResponseDto.fromJson(
          json['restaurant'] as Map<String, dynamic>),
      status: $enumDecode(_$BookingStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$BookingResponseDtoToJson(BookingResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'seats': instance.seats,
      'sittingTime': instance.sittingTime,
      'customer': instance.customer,
      'restaurant': instance.restaurant,
      'status': _$BookingStatusEnumMap[instance.status]!,
    };

const _$BookingStatusEnumMap = {
  BookingStatus.ACTIVE: 'ACTIVE',
  BookingStatus.CANCELLED: 'CANCELLED',
};
