import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:toastification/toastification.dart';
import 'package:weather/Core/network/network_info_imp.dart';
import 'package:weather/Core/service/api_service.dart';
import 'package:weather/Core/widget/custom_button.dart';
import 'package:weather/Core/widget/custom_text_form_field.dart';
import 'package:weather/Feature/Home/bloc/home_bloc.dart';
import 'package:weather/Feature/Home/data/data_source/get_wather_city.dart';
import 'package:weather/Feature/Home/data/repostiory/home_repository_imp.dart';
import 'package:weather/Feature/Home/persentation/widget/weather_card.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController cityNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocConsumer<HomeBloc, HomeState>(
                listener: (context, state) {
                
          if(state is HomeFailure) {
            toastification.show(
              autoCloseDuration: Duration(seconds: 4),
              context: context,
              type: ToastificationType.error,
              title: Text("Not Found This City", style: TextStyle(color: Colors.red),),
              description: Text(state.message, style: TextStyle(color: Colors.red),),
            );
            // ToastificationWrapper
          }
                },
                builder: (context, state) {
                  if (state is SuccessGetWeatherState) {
                    return WeatherCard(
                      model: state.weather,
                    );
                  }
                  else{
                    return Container();
                  }
                },
              ),
              Gap(30),
              CustomTextFormField(
                controller: cityNameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please write the city name";
                  }
                  return null;
                },
                hint: "City Name",
              ),
              Gap(50),
              CustomButton(
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    BlocProvider.of<HomeBloc>(context).add(
                        GetWeatherCityEvent(cityName: cityNameController.text));
                  }
                },
                text: "Get Weather",
              )
            ],
          ),
        ),
      ),
    );
  }
}

// 5cc6ae6ced234f8ba36202532230607
