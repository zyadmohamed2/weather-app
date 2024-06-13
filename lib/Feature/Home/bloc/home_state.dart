part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

class SuccessGetWeatherState extends HomeState {
  final WeatherModel weather;
  SuccessGetWeatherState({required this.weather});
}

class HomeFailure extends HomeState {
  final String message;

  HomeFailure({required this.message});
}