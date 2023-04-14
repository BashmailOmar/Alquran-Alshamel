import 'package:alquran_alshamel/services/networking.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrayersData {
  String cityName = "";

  void sharedPref() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    cityName = (prefs.getString("cityName")).toString();
  }

  Future<dynamic> getCityPrayers(cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
        "http://api.aladhan.com/v1/timingsByCity?city=$cityName&country=%&method=4");
    var prayersData = await networkHelper.getData();
    return prayersData;
  }
}
