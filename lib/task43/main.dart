
import 'package:flutter_project/task43/weather_api_client.dart';

Future<void> main() async {
  fetchWeather().then((value)
     => print(value));

}
