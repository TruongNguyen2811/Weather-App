import 'dart:ui';

import 'package:flutter/material.dart';
import '../components/weather_item.dart';
import '../constant.dart';
import 'package:intl/intl.dart';

class DetailPage extends StatefulWidget {
  final dailyForecastWeather;

  const DetailPage({Key? key, this.dailyForecastWeather}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final Constants _constants = Constants();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var weatherData = widget.dailyForecastWeather;

    //function to get weather

    // int maxWindSpeed = weatherData["day"]["maxwind_kph"].toInt();
    // int avgHumidity = weatherData["day"]["avghumidity"].toInt();
    // int chanceOfRain = weatherData["day"]["daily_chance_of_rain"].toInt();

    // var parsedDate = DateTime.parse(weatherData["date"]);
    // var forecastDate = DateFormat('EEEE, d MMMM').format(parsedDate);

    // String weatherName = weatherData["day"]["condition"]["text"];
    // String weatherIcon = weatherName.replaceAll(' ', '').toLowerCase() + ".png";

    // int minTemperature = weatherData["day"]["mintemp_c"].toInt();
    // int maxTemperature = weatherData["day"]["maxtemp_c"].toInt();

    // var forecastData = {
    //   'maxWindSpeed': maxWindSpeed,
    //   'avgHumidity': avgHumidity,
    //   'chanceOfRain': chanceOfRain,
    //   'forecastDate': forecastDate,
    //   'weatherName': weatherName,
    //   'weatherIcon': weatherIcon,
    //   'minTemperature': minTemperature,
    //   'maxTemperature': maxTemperature
    // };
    // print(weatherData);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 40, 40, 40),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 40, 40, 40),
        title: Text('Forecasts'),
        // automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SizedBox(
        height: size.height,
        child: ListView.builder(
          itemCount: weatherData.length,
          itemBuilder: (context, index) {
            return Container(
              height: 120,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.only(bottom: 20),
              // color: Colors.amber,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: const Offset(5, 10),
                    blurRadius: 10,
                  ),
                ],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(255, 54, 54, 54),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180,
                    // color: Colors.amberAccent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/' +
                              weatherData[index]["day"]["condition"]["text"]
                                  .replaceAll(' ', '')
                                  .toLowerCase() +
                              ".png"),
                          width: 40,
                        ),
                        Text(
                          weatherData[index]["day"]["condition"]["text"],
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          DateFormat('EEEE, d MMMM')
                              .format(
                                  DateTime.parse(weatherData[index]["date"]))
                              .toString(),
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                weatherData[index]["day"]["mintemp_c"]
                                    .toString(),
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              'o',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                '-' +
                                    weatherData[index]["day"]["maxtemp_c"]
                                        .toString(),
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              'o',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
