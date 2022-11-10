import 'package:alquran_alshamel/services/location.dart';
import 'package:alquran_alshamel/services/networking.dart';

class PrayersData {
  Future<dynamic> getCityPrayers(cityName) async {
    cityName ?? "Makkah";
    NetworkHelper networkHelper = NetworkHelper(
        "http://api.aladhan.com/v1/timingsByCity?city=$cityName&country=%&method=4");
    var prayersData = await networkHelper.getData();
    return prayersData;
  }

  // Future<dynamic> getLocationWeather() async {
  //   Location location = Location();
  //   await location.getCurrentLocation();

  //   NetworkHelper networkHelper = NetworkHelper(
  //       '$openWeatherMapUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');

  //   var weatherData = await networkHelper.getData();
  //   return weatherData;
  // }
}
