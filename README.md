# Foody Api Client

# Table of Contents
- [Description](#description)
    - [Useful Links](#useful-links)
    - [What is Foody](#what-is-foody)
    - [What is Foody Api Client](#what-is-foody-api-client)
- [Usage](#usage)
- [API Repositories](#api-repositories)
    - [Users](#auth)
    - [Auth](#auth)
    - [Restaurants](#auth)
    - [Categories](#auth)
    - [Weekdays](#auth)
    - [Sitting Times](#auth)
    - [Bookings](#auth)
    - [Orders](#auth)
    - [Dishes](#auth)
    - [Reviews](#auth)

# Description

## Useful Links
- Documentation: https://docs.google.com/document/d/1p1RFOiUF8x7opr-N9B8PLcPE7cJZiqI1_v2iclKKEvk/edit?usp=sharing
- Presentation: https://pitch.com/v/presentazione-foody-hk9puv

## What is Foody
Foody is an **innovative** and **centralized** software solution designed to optimize interactions between **users** and **restaurants**. It offers an all-in-one platform for **table reservations**, **in-restaurant orders**, **payments** and **reviews** through a user-friendly interface.

The system includes a mobile app for customers to find restaurants, book tables, place orders, make payments and leave reviews, as well as a dedicated app for restaurant owners to **manage menus**, **reservations**, and **customer feedback**. Additionally, it supports restaurant staff by **streamlining order management** and communication between the kitchen and dining area, improving efficiency and service accuracy.

Foody addresses the growing need for digitalization in the restaurant industry, providing a **scalable** and **innovative** solution to enhance both customer experience and operational performance.

## What is Foody Api Client
Foody API Client is a **Dart package** that allows the Flutter client to **interface with** the **[Foody backend APIs](https://github.com/foody-elis/foody-api)**, enabling seamless data communication between both the Business and Customer apps and the server.

# Usage
To make a call to Foody's APIs, this package provides a method (util) that takes care of making the request and handling error cases appropriately for you:
```dart
Future<void> callApi<T>({
  required Future<T> Function() api,
  void Function(T)? onComplete,
  void Function(ErrorDto)? onFailed,
  void Function()? onError,
  void Function(String)? errorToEmit,
  bool throwException = false,
})
```

| Parameter                      | Description                                                                                                           | Required           |
|--------------------------------|-----------------------------------------------------------------------------------------------------------------------|:------------------:|
| `api`                          | The api you want to call ([see below](#api-repositories))                                                             | :white_check_mark: |
| `onComplete`                   | Run when the call is successfully completed.                                                                          | :x:                |
| `onFailed`                     | Run when the call has properly returned an error.                                                                     | :x:                |
| `onError`                      | Run when the call returned an unknown generic error.                                                                  | :x:                |
| `errorToEmit`                  | Run when an exception is encountered (`onFailed` or `onError`). An automatically generated error message is returned. | :x:                |
| `throwException`               | If you want to handle the exception manually and not supress it.                                                      | :x:                |

> [!NOTE]  
> The generic type (`T`) represents the class that must return `onComplete`, which is the equivalent response type of the [API](#api-repositories) call you are going to make.

*Example (login use case*):
```dart
await callApi<AuthResponseDto>(
  api: () => foodyApiClient.auth.login(
    UserLoginRequestDto(
      email: state.email,
      password: state.password,
    )
  ),
  onComplete: (response) { ... },
  errorToEmit: (msg) => emit(state.copyWith(apiError: msg)),
);
```

# API Repositories
> [!NOTE]  
> Not all endpoints exposed by the backend ([foody-api](https://github.com/foody-elis/foody-api)) are covered by the ([foody_api_client](https://github.com/foody-elis/foody_api_client)) package.

## Users
| Method                         | Endpoint                                            | Request                            | Response                              |
|--------------------------------|-----------------------------------------------------|------------------------------------|---------------------------------------|
| `getById`                      | `GET /{id}`                                         | `int`                              | `UserResponseDto`                     |
| `edit`                         | `PUT /`                                             | `UserUpdateRequestDto`             | `UserResponseDto`                     |

## Auth
| Method                         | Endpoint                                            | Request                            | Response                              |
|--------------------------------|-----------------------------------------------------|------------------------------------|---------------------------------------|
| `registerCustomer`             | `POST /customers`                                   | `UserRegistrationRequestDto`       | `AuthResponseDto`                     |
| `registerRestaurateur`         | `POST /restaurateurs`                               | `UserRegistrationRequestDto`       | `AuthResponseDto`                     |
| `login`                        | `POST /login`                                       | `UserLoginRequestDto`              | `AuthResponseDto`                     |
| `getAuthenticatedEmployee`     | `GET /user`                                         |                                    | `EmployeeUserResponseDto`             |
| `getAuthenticatedUser`         | `GET /user`                                         |                                    | `UserResponseDto`                     |

## Restaurants
| Method                         | Endpoint                                            | Request                            | Response                              |
|--------------------------------|-----------------------------------------------------|------------------------------------|---------------------------------------|
| `save`                         | `POST /`                                            | `RestaurantRequestDto`             | `RestaurantResponseDto`               |
| `edit`                         | `PUT /{id}`                                         | `int, RestaurantRequestDto`        | `RestaurantResponseDto`               |
| `getAll`                       | `GET /`                                             |                                    | `List<DetailedRestaurantResponseDto>` |
| `getMyRestaurant`              | `GET /restaurateur`                                 |                                    | `DetailedRestaurantResponseDto`       |
| `getById`                      | `GET /{id}`                                         | `int`                              | `DetailedRestaurantResponseDto`       |

## Categories
| Method                         | Endpoint                                            | Request                            | Response                              |
|--------------------------------|-----------------------------------------------------|------------------------------------|---------------------------------------|
| `getAll`                       | `GET /`                                             |                                    | `List<CategoryResponseDto>`           |

## Weekdays Info
| Method                         | Endpoint                                            | Request                            | Response                              |
|--------------------------------|-----------------------------------------------------|------------------------------------|---------------------------------------|
| `save`                         | `POST /`                                            | `WeekdayInfoRequestDto`            | `WeekdayInfoResponseDto`              |
| `getByRestaurant`              | `GET /restaurant/{id}`                              | `int`                              | `List<WeekdayInfoResponseDto>`        |
| `update`                       | `PUT /{id}`                                         | `int, WeekdayInfoUpdateRequestDto` | `WeekdayInfoResponseDto`              |

## Sitting Times
| Method                         | Endpoint                                            | Request                            | Response                              |
|--------------------------------|-----------------------------------------------------|------------------------------------|---------------------------------------|
| `getAllByRestaurantAndWeekDay` | `GET /restaurant/{restaurantId}/week-day/{weekDay}` | `int restaurantId, int weekDay`    | `List<SittingTimeResponseDto>`        |

## Bookings
| Method                         | Endpoint                                            | Request                            | Response                              |
|--------------------------------|-----------------------------------------------------|------------------------------------|---------------------------------------|
| `getByRestaurant`              | `GET /restaurant/{id}`                              | `int`                              | `List<BookingResponseDto>`            |
| `getByCustomer`                | `GET /customer`                                     |                                    | `List<BookingResponseDto>`            |
| `getCurrentByCustomer`         | `GET /customer/current`                             |                                    | `List<BookingResponseDto>`            |
| `save`                         | `POST /`                                            | `BookingRequestDto`                | `BookingResponseDto`                  |
| `cancel`                       | `PATCH /cancel/{id}`                                | `int`                              | `BookingResponseDto`                  |

## Orders
| Method                         | Endpoint                                            | Request                            | Response                              |
|--------------------------------|-----------------------------------------------------|------------------------------------|---------------------------------------|
| `getByRestaurant`              | `GET /restaurant/{id}`                              | `int`                              | `List<OrderResponseDto>`              |
| `getByBuyer`                   | `GET /buyer`                                        |                                    | `List<OrderResponseDto>`              |
| `save`                         | `POST /`                                            | `OrderRequestDto`                  | `OrderResponseDto`                    |
| `pay`                          | `PATCH /pay/{id}`                                   | `int`                              | `OrderResponseDto`                    |
| `prepare`                      | `PATCH /prepare/{id}`                               | `int`                              | `OrderResponseDto`                    |
| `complete`                     | `PATCH /complete/{id}`                              | `int`                              | `OrderResponseDto`                    |
| `getCurrentByRestaurant`       | `GET /restaurant/{id}/in-progress`                  | `int`                              | `List<OrderResponseDto>`              |

## Dishes
| Method                         | Endpoint                                            | Request                            | Response                              |
|--------------------------------|-----------------------------------------------------|------------------------------------|---------------------------------------|
| `getAllByRestaurant`           | `GET /restaurant/{id}`                              | `int`                              | `List<DishResponseDto>`               |
| `add`                          | `POST /`                                            | `DishRequestDto`                   | `DishResponseDto`                     |
| `edit`                         | `PUT /{id}`                                         | `int, DishRequestDto`              | `DishResponseDto`                     |
| `delete`                       | `DELETE /{id}`                                      | `int`                              | `void`                                |

## Reviews
| Method                         | Endpoint                                            | Request                            | Response                              |
|--------------------------------|-----------------------------------------------------|------------------------------------|---------------------------------------|
| `getByRestaurant`              | `GET /restaurant/{id}`                              | `int`                              | `List<ReviewResponseDto>`             |
| `getByCustomer`                | `GET /customer`                                     |                                    | `List<ReviewResponseDto>`             |
| `save`                         | `POST /`                                            | `ReviewRequestDto`                 | `ReviewResponseDto`                   |




