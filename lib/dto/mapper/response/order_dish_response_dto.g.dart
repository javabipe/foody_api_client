// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../response/order_dish_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDishResponseDto _$OrderDishResponseDtoFromJson(
        Map<String, dynamic> json) =>
    OrderDishResponseDto(
      dishId: (json['dishId'] as num).toInt(),
      dishName: json['dishName'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$OrderDishResponseDtoToJson(
        OrderDishResponseDto instance) =>
    <String, dynamic>{
      'dishId': instance.dishId,
      'dishName': instance.dishName,
      'price': instance.price,
      'quantity': instance.quantity,
    };
