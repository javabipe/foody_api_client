import 'package:dio/dio.dart';
import 'package:foody_api_client/dto/request/order_request_dto.dart';
import 'package:foody_api_client/dto/response/order_response_dto.dart';
import 'package:retrofit/http.dart';

part 'generated/orders_api_repository.g.dart';

@RestApi()
abstract class OrdersApiRepository {
  factory OrdersApiRepository(Dio dio, {String? baseUrl}) =
      _OrdersApiRepository;

  @GET('/restaurant/{id}')
  Future<List<OrderResponseDto>> getByRestaurant(@Path() int id);

  @GET('/buyer')
  Future<List<OrderResponseDto>> getByBuyer();

  @POST('')
  Future<OrderResponseDto> save(@Body() OrderRequestDto _);

  @PATCH('/pay/{id}')
  Future<OrderResponseDto> pay(@Path() int id);

  @PATCH('/prepare/{id}')
  Future<OrderResponseDto> prepare(@Path() int id);

  @PATCH('/complete/{id}')
  Future<OrderResponseDto> complete(@Path() int id);

  @GET('/restaurant/{id}/in-progress')
  Future<List<OrderResponseDto>> getCurrentByRestaurant(@Path() int id);
}
