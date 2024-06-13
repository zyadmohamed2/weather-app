import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather/Feature/Home/data/model/weather_model/weather_model.dart';
import 'package:weather/Feature/Home/data/repostiory/home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeRepository repository;
  HomeBloc({required this.repository}) : super(HomeInitial()) {
    on<GetWeatherCityEvent>((event, emit) async {
      var response = await repository.getWeatherCity(cityName: event.cityName);
      response.fold(
        (failure) => emit(HomeFailure(message: failure.errMessage)),
        (data) => emit(SuccessGetWeatherState(weather: data)),
      );
    });
  }
}
