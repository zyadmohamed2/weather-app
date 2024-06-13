import 'package:dartz/dartz.dart';
import 'package:weather/Core/error/failuer.dart';
import 'package:weather/Feature/Home/data/model/weather_model/weather_model.dart';

abstract class HomeRepository {
  Future<Either<Failure, WeatherModel>> getWeatherCity({required String cityName});
}
