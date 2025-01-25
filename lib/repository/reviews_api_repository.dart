import 'package:dio/dio.dart';
import 'package:foody_api_client/dto/request/review_request_dto.dart';
import 'package:foody_api_client/dto/response/review_response_dto.dart';
import 'package:retrofit/http.dart';

part 'generated/reviews_api_repository.g.dart';

@RestApi()
abstract class ReviewsApiRepository {
  factory ReviewsApiRepository(Dio dio, {String? baseUrl}) =
      _ReviewsApiRepository;

  @GET('/restaurant/{id}')
  Future<List<ReviewResponseDto>> getByRestaurant(@Path() int id);

  @GET('/customer')
  Future<List<ReviewResponseDto>> getByCustomer();

  @POST('')
  Future<ReviewResponseDto> save(@Body() ReviewRequestDto _);
}
