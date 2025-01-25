// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../response/order_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderResponseDto _$OrderResponseDtoFromJson(Map<String, dynamic> json) =>
    OrderResponseDto(
      id: (json['id'] as num).toInt(),
      tableCode: json['tableCode'] as String,
      orderDishes: (json['orderDishes'] as List<dynamic>)
          .map((e) => OrderDishResponseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      buyer: UserResponseDto.fromJson(json['buyer'] as Map<String, dynamic>),
      restaurant: RestaurantResponseDto.fromJson(
          json['restaurant'] as Map<String, dynamic>),
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$OrderResponseDtoToJson(OrderResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tableCode': instance.tableCode,
      'orderDishes': instance.orderDishes,
      'buyer': instance.buyer,
      'restaurant': instance.restaurant,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$OrderStatusEnumMap = {
  OrderStatus.CREATED: 'CREATED',
  OrderStatus.PAID: 'PAID',
  OrderStatus.PREPARING: 'PREPARING',
  OrderStatus.COMPLETED: 'COMPLETED',
};
