// Mocks generated by Mockito 5.4.4 from annotations
// in flutterdex/test/domain/use_cases/get_current_weather_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:flutterdex/core/error/failure.dart' as _i5;
import 'package:flutterdex/domain/entities/current_weather.dart' as _i6;
import 'package:flutterdex/domain/repositories/weather_api_repository.dart'
    as _i2;
import 'package:fpdart/fpdart.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i7;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [WeatherApiRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockWeatherApiRepository extends _i1.Mock
    implements _i2.WeatherApiRepository {
  MockWeatherApiRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<_i4.Either<_i5.Failure, _i6.CurrentWeather>> getCurrentWeather(
          String? city) =>
      (super.noSuchMethod(
        Invocation.method(
          #getCurrentWeather,
          [city],
        ),
        returnValue:
            _i3.Future<_i4.Either<_i5.Failure, _i6.CurrentWeather>>.value(
                _i7.dummyValue<_i4.Either<_i5.Failure, _i6.CurrentWeather>>(
          this,
          Invocation.method(
            #getCurrentWeather,
            [city],
          ),
        )),
      ) as _i3.Future<_i4.Either<_i5.Failure, _i6.CurrentWeather>>);
}
