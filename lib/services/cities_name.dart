import 'package:cities/cities.dart';
import 'package:cities/model.dart';

Future<List> getCitiesName() async {
  final cities = await cities_auto();
  final allCities = cities.all;
  // final first_ten_cities = all_cities.take(10);
  return allCities;
}
