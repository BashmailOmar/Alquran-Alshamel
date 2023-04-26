import 'package:alquran_alshamel/services/networking.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrayersData {
  Future<dynamic> getCityPrayers() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    NetworkHelper networkHelper = NetworkHelper(
        "http://api.aladhan.com/v1/timingsByCity?city=${(prefs.getString("cityName")).toString()}&country=%&method=4");
    var prayersData = await networkHelper.getData();
    return prayersData;
  }
}
