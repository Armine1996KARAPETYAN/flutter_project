import 'dart:convert';
import 'package:http/http.dart' as http;
import 'weather.dart';

Future<dynamic> fetchData() async {
  const String baseUrl = '//run.mocky.io';
  const String endpoint = 'v3/67827ecc-ed90-4d47-a1cc-5e3f2228b03d';
  var uri = Uri.https(
    baseUrl,
    endpoint,
  );
  // https://run.mocky.io/v3/67827ecc-ed90-4d47-a1cc-5e3f2228b03d

  final response = await http.get(uri);

  if (response.statusCode == 200) {
    var result = jsonDecode(response.body);

    Weather weather = Weather.fromJson(result);

    return weather;
  }

  return Exception();
}
