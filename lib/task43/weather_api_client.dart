import 'dart:convert';
import 'package:http/http.dart' as http;
import 'weather.dart';

Future<Weather> fetchWeather() async {
  const String baseUrl = '//run.mocky.io';
  const String endpoint = 'v3/67827ecc-ed90-4d47-a1cc-5e3f2228b03d';
  var uri = Uri.https(
    baseUrl,
    endpoint,
  );
  // https://run.mocky.io/v3/67827ecc-ed90-4d47-a1cc-5e3f2228b03d

  final response = await http.get(uri);

  if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
       return Weather(cityName: 'Gyumri', temperature: 8, wind: 2, humidity: 85, pressure: 1016, visibility: 16);
    } else {
      throw Exception('Failed to fetch weather ');

  }

}
