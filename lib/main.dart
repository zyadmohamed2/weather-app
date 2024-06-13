import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:toastification/toastification.dart';
import 'package:weather/Core/network/network_info_imp.dart';
import 'package:weather/Core/service/api_service.dart';
import 'package:weather/Feature/Home/bloc/home_bloc.dart';
import 'package:weather/Feature/Home/data/data_source/get_wather_city.dart';
import 'package:weather/Feature/Home/data/repostiory/home_repository_imp.dart';
import 'package:weather/Feature/Home/persentation/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeBloc(repository: HomeRepositoryImp())),
      ],
      child: ToastificationWrapper(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
        title: 'Weather App',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: HomeScreen(),
            ),
      ),
    );
  }
}
