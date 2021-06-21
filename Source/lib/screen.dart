import 'package:flutter/material.dart';
import 'package:weather_app/screen_components.dart';

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          child: Stack(
            children: [
              Image.asset(
                'image/background.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            TextWidget(
                              text: "Viet Nam",
                              size: 30,
                            ),
                            DegreeText(),
                          ],
                        ),
                        VerticalText(),
                      ],
                    ),
                    SizedBox(
                      height: 320,
                    ),
                    WeatherCard(),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
