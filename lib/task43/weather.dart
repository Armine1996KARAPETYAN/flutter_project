class Weather {
  String? cityName;
  double? temperature;
  double? wind;
  int? humidity;
  int? pressure;
  int ?visibility;

  Weather({required this.cityName,
    required this.temperature,
    required this.wind,
    required this.humidity,
    required this.pressure,
    required this.visibility
  });

  factory Weather.fromJson(Map<String, dynamic>json)=>
      Weather(
          cityName:json['cityName'],
          temperature: json['temp'],
          wind: json['wind'],
          humidity:json['humidity'],
          pressure: json['pressure'],
          visibility: json['visibility']
      );
}
