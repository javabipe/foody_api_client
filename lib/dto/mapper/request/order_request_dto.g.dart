// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../request/order_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderRequestDto _$OrderRequestDtoFromJson(Map<String, dynamic> json) =>
    OrderRequestDto(
      tableCode: json['tableCode'] as String,
      orderDishes: (json['orderDishes'] as List<dynamic>)
          .map((e) => OrderDishRequestDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      restaurantId: (json['restaurantId'] as num).toInt(),
    );

Map<String, dynamic> _$OrderRequestDtoToJson(OrderRequestDto instance) =>
    <String, dynamic>{
      'tableCode': instance.tableCode,
      'orderDishes': instance.orderDishes,
      'restaurantId': instance.restaurantId,
    };
