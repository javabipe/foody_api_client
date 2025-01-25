import 'package:dio/dio.dart';
import 'package:foody_api_client/repository/auth_api_repository.dart';
import 'package:foody_api_client/repository/bookings_api_repository.dart';
import 'package:foody_api_client/repository/dishes_api_repository.dart';
import 'package:foody_api_client/repository/restaurants_api_repository.dart';
import 'package:foody_api_client/repository/reviews_api_repository.dart';
import 'package:foody_api_client/repository/sitting_times_api_repository.dart';
import 'package:foody_api_client/repository/users_api_repository.dart';
import 'package:foody_api_client/repository/weekdays_info_api_repository.dart';

import 'repository/categories_api_repository.dart';
import 'repository/orders_api_repository.dart';

class FoodyApiClient {
  late AuthApiRepository auth;
  late CategoriesApiRepository categories;
  late RestaurantsApiRepository restaurants;
  late WeekdaysInfoApiRepository weekdayInfo;
  late SittingTimesApiRepository sittingTimes;
  late BookingsApiRepository bookings;
  late DishesApiRepository dishes;
  late ReviewsApiRepository reviews;
  late OrdersApiRepository orders;
  late UsersApiRepository users;

  FoodyApiClient({required Dio dio}) {
    this.dio = dio;
  }

  set dio(Dio dio) {
    auth = AuthApiRepository(dio, baseUrl: "${dio.options.baseUrl}/auth");
    categories = CategoriesApiRepository(dio,
        baseUrl: "${dio.options.baseUrl}/categories");
    restaurants = RestaurantsApiRepository(dio,
        baseUrl: "${dio.options.baseUrl}/restaurants");
    weekdayInfo = WeekdaysInfoApiRepository(dio,
        baseUrl: "${dio.options.baseUrl}/week-day-infos");
    sittingTimes = SittingTimesApiRepository(dio,
        baseUrl: "${dio.options.baseUrl}/sitting-times");
    bookings =
        BookingsApiRepository(dio, baseUrl: "${dio.options.baseUrl}/bookings");
    dishes = DishesApiRepository(dio, baseUrl: "${dio.options.baseUrl}/dishes");
    reviews =
        ReviewsApiRepository(dio, baseUrl: "${dio.options.baseUrl}/reviews");
    orders = OrdersApiRepository(dio, baseUrl: "${dio.options.baseUrl}/orders");
    users = UsersApiRepository(dio, baseUrl: "${dio.options.baseUrl}/users");
  }
}
