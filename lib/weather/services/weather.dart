import '../services/location.dart';
import 'package:playground/weather/services/networking.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityWeather(typedCity) async {
    String city = typedCity;
    var typedCityUri = Uri.parse(
        '$openWeatherMapURL?q=$city&units=metric&appid=${dotenv.env['WEATHER_API']}');

    NetworkHelper networkHelper = NetworkHelper(typedCityUri);

    var weatherData = await networkHelper.getData();

    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    var myUri = Uri.parse(
        '$openWeatherMapURL?lat=${location.latitude}&lon=${location.longitude}&units=metric&appid=${dotenv.env['WEATHER_API']}');

    NetworkHelper networkHelper = NetworkHelper(myUri);

    var weatherData = await networkHelper.getData();

    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 18) {
      return 'Time for shorts and 👕';
    } else if (temp < 5) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
