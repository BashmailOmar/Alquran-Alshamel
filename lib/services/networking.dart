import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future<dynamic> getData() async {
    http.Response response = await http.get(Uri.parse(url));
    final Map data;
    if (response.statusCode == 200) {
      data = json.decode(response.body);
      // print(data);
      return data;
    } else {
      print("Error");
    }
  }
}
