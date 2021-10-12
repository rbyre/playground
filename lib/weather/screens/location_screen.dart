import 'package:flutter/material.dart';
import 'package:playground/weather/screens/city_screen.dart';
import '../utilities/constants.dart';
import '../services/weather.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key, this.locationWeather}) : super(key: key);

  final locationWeather;

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  WeatherModel weather = WeatherModel();

  int? temperature;
  String? weatherIcon;
  String? weatherDescription;
  String? weatherMessage;
  late double longitude;
  late double latitude;
  String? place;
  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    setState(() {
      double temp = weatherData['main']['temp'];
      temperature = temp.toInt();
      int condition = weatherData['weather'][0]['id'];
      weatherIcon = weather.getWeatherIcon(condition);
      weatherDescription = weatherData['weather'][0]['description'];
      weatherMessage = weather.getMessage(temperature ?? 99);
      longitude = weatherData['coord']['lon'];
      latitude = weatherData['coord']['lat'];
      place = weatherData['name'];
      print(weatherData);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/location_background.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.8), BlendMode.dstATop),
        ),
      ),
      constraints: BoxConstraints.expand(),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () async {
                    var weatherData = await weather.getLocationWeather();
                    updateUI(weatherData);
                  },
                  child: Icon(
                    Icons.near_me,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    var typedName = await Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CityScreen()));
                    if (typedName != null) {
                      var weatherData = await weather.getCityWeather(typedName);
                      updateUI(weatherData);
                    }
                  },
                  child: Icon(
                    Icons.location_city,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    '$temperature°',
                    style: tempTextStyle,
                  ),
                  Expanded(
                    child: Text(
                      weatherIcon ?? 'Error',
                      style: conditionTextStyle,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Text(
                '$weatherMessage in $place',
                textAlign: TextAlign.right,
                style: messageTextStyle,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
