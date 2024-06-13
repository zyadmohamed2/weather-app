import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:weather/Core/error/failuer.dart';
import 'package:weather/Core/network/network_info.dart';
import 'package:weather/Core/network/network_info_imp.dart';
import 'package:weather/Core/service/api_service.dart';
import 'package:weather/Feature/Home/data/data_source/get_wather_city.dart';
import 'package:weather/Feature/Home/data/model/weather_model/weather_model.dart';
import 'package:weather/Feature/Home/data/repostiory/home_repository.dart';

class HomeRepositoryImp extends HomeRepository {
  GetWeatherCityRemoteDataSource dataSource = GetWeatherCityRemoteDataSource();
  NetworkInfo networkInfo = NetworkInfoImp(internetConnectionChecker: InternetConnectionChecker());

  @override
  Future<Either<Failure, WeatherModel>> getWeatherCity({required String cityName}) async {
    if (await networkInfo.isConnected) {
      try {
        var response = await dataSource.getWeatherCity(cityName: cityName);
        if (response.statusCode == 200) {
          return right(WeatherModel.fromJson(jsonDecode(response.body)));
        }
        else{
          return left(ServerFailure(errMessage: jsonDecode(response.body)['error']['message']));
        }
      } catch (error) {
        return left(ServerFailure(errMessage: error.toString()));
      }
    } else {
      return left(NetworkError(errMessage: "No Network"));
    }
  }
}
