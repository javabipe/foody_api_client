// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../request/order_dish_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDishRequestDto _$OrderDishRequestDtoFromJson(Map<String, dynamic> json) =>
    OrderDishRequestDto(
      dishId: (json['dishId'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$OrderDishRequestDtoToJson(
        OrderDishRequestDto instance) =>
    <String, dynamic>{
      'dishId': instance.dishId,
      'quantity': instance.quantity,
    };
