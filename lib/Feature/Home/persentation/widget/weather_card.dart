import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:weather/Core/resources/colors.dart';
import 'package:weather/Core/resources/style.dart';
import 'package:weather/Feature/Home/data/model/weather_model/weather_model.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key, required this.model});
  final WeatherModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColor.weatherCardColor),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              model.current?.condition?.text??"",
                              style: AppStyle.style18
                            ),
                            Text(
                              "${model.location?.name??""}/${model.location?.country??""}",
                              style:
                                  AppStyle.style18.copyWith(color: Colors.grey)
                            ),
                          ],
                        ),
                        Gap(20),
                        Image.network("https:${model.current!.condition!.icon!}", width: 150, height: 150, fit: BoxFit.cover,),
                        Gap(20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${model.current?.tempC}\u00B0C",
                              style: AppStyle.style18
                            ),
                            Text(
                              "${model.current?.tempF}\u00B0F",
                              style: AppStyle.style18
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
  }
}