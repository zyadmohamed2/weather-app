import 'package:http/http.dart';
import 'package:weather/Core/service/api_service.dart';
import 'package:weather/Feature/Home/data/model/weather_model/weather_model.dart';

class GetWeatherCityRemoteDataSource{
  ApiService api = ApiService();
  Future<Response> getWeatherCity({required String cityName}){
    return api.get(url: "https://api.weatherapi.com/v1/current.json?q=$cityName&key=5cc6ae6ced234f8ba36202532230607");
  }
}