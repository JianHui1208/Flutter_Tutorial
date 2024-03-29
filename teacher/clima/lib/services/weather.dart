import 'location.dart';
import 'networking.dart';

const String apiKey = '168ba629c6e1391bbcae64e03106d883';

class WeatherModel {

  //Create a getLocationWeather() method that refactor the location and weather data retrieval from the getLocationData() method in LoadingScreen
  Future<dynamic> getLocationWeather() async {
    //Create a Location object
    Location location = Location();
    //Call the getCurrentLocation() method
    await location.getCurrentLocation();

    //Create a NetworkHelper object, then call its getData() method
    NetworkHelper networkHelper = NetworkHelper(url: 'https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');

    var weatherData = await networkHelper.getData();

    return weatherData;
  }

  Future<dynamic> getCityWeather(String cityName) async {
    //Create a Location object
    Location location = Location();
    //Call the getCurrentLocation() method
    await location.getCurrentLocation();

    //Create a NetworkHelper object, then call its getData() method
    NetworkHelper networkHelper = NetworkHelper(url: 'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey&units=metric');

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
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
