part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class GetWeatherCityEvent extends HomeEvent{
  final String cityName;

  GetWeatherCityEvent({required this.cityName});
}