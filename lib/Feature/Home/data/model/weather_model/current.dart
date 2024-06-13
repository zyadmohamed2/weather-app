import 'condition.dart'; // Assuming Condition class is imported correctly

class Current {
  double? lastUpdatedEpoch; // Changed from int? to double?
  String? lastUpdated;
  double? tempC;
  double? tempF;
  double? isDay; // Changed from int? to double?
  Condition? condition;
  double? windMph;
  double? windKph;
  double? windDegree; // Changed from int? to double?
  String? windDir;
  double? pressureMb; // Changed from int? to double?
  double? pressureIn;
  double? precipMm; // Changed from int? to double?
  double? precipIn; // Changed from int? to double?
  double? humidity; // Changed from int? to double?
  double? cloud; // Changed from int? to double?
  double? feelslikeC;
  double? feelslikeF;
  double? windchillC;
  double? windchillF; // Changed from int? to double?
  double? heatindexC;
  double? heatindexF;
  double? dewpointC;
  double? dewpointF;
  double? visKm; // Changed from int? to double?
  double? visMiles; // Changed from int? to double?
  double? uv; // Changed from int? to double?
  double? gustMph; // Changed from int? to double?
  double? gustKph;

  Current({
    this.lastUpdatedEpoch,
    this.lastUpdated,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.windchillC,
    this.windchillF,
    this.heatindexC,
    this.heatindexF,
    this.dewpointC,
    this.dewpointF,
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
  });

  factory Current.fromJson(Map<String, dynamic> json) => Current(
        lastUpdatedEpoch: (json['last_updated_epoch'] as num?)?.toDouble(), // Changed from int? to num? to double?
        lastUpdated: json['last_updated'] as String?,
        tempC: (json['temp_c'] as num?)?.toDouble(),
        tempF: (json['temp_f'] as num?)?.toDouble(),
        isDay: (json['is_day'] as num?)?.toDouble(), // Changed from int? to num? to double?
        condition: json['condition'] == null
            ? null
            : Condition.fromJson(json['condition'] as Map<String, dynamic>),
        windMph: (json['wind_mph'] as num?)?.toDouble(),
        windKph: (json['wind_kph'] as num?)?.toDouble(),
        windDegree: (json['wind_degree'] as num?)?.toDouble(), // Changed from int? to num? to double?
        windDir: json['wind_dir'] as String?,
        pressureMb: (json['pressure_mb'] as num?)?.toDouble(), // Changed from int? to num? to double?
        pressureIn: (json['pressure_in'] as num?)?.toDouble(),
        precipMm: (json['precip_mm'] as num?)?.toDouble(), // Changed from int? to num? to double?
        precipIn: (json['precip_in'] as num?)?.toDouble(), // Changed from int? to num? to double?
        humidity: (json['humidity'] as num?)?.toDouble(), // Changed from int? to num? to double?
        cloud: (json['cloud'] as num?)?.toDouble(), // Changed from int? to num? to double?
        feelslikeC: (json['feelslike_c'] as num?)?.toDouble(),
        feelslikeF: (json['feelslike_f'] as num?)?.toDouble(),
        windchillC: (json['windchill_c'] as num?)?.toDouble(),
        windchillF: (json['windchill_f'] as num?)?.toDouble(), // Changed from int? to num? to double?
        heatindexC: (json['heatindex_c'] as num?)?.toDouble(),
        heatindexF: (json['heatindex_f'] as num?)?.toDouble(),
        dewpointC: (json['dewpoint_c'] as num?)?.toDouble(),
        dewpointF: (json['dewpoint_f'] as num?)?.toDouble(),
        visKm: (json['vis_km'] as num?)?.toDouble(), // Changed from int? to num? to double?
        visMiles: (json['vis_miles'] as num?)?.toDouble(), // Changed from int? to num? to double?
        uv: (json['uv'] as num?)?.toDouble(), // Changed from int? to num? to double?
        gustMph: (json['gust_mph'] as num?)?.toDouble(), // Changed from int? to num? to double?
        gustKph: (json['gust_kph'] as num?)?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        'last_updated_epoch': lastUpdatedEpoch,
        'last_updated': lastUpdated,
        'temp_c': tempC,
        'temp_f': tempF,
        'is_day': isDay,
        'condition': condition?.toJson(),
        'wind_mph': windMph,
        'wind_kph': windKph,
        'wind_degree': windDegree,
        'wind_dir': windDir,
        'pressure_mb': pressureMb,
        'pressure_in': pressureIn,
        'precip_mm': precipMm,
        'precip_in': precipIn,
        'humidity': humidity,
        'cloud': cloud,
        'feelslike_c': feelslikeC,
        'feelslike_f': feelslikeF,
        'windchill_c': windchillC,
        'windchill_f': windchillF,
        'heatindex_c': heatindexC,
        'heatindex_f': heatindexF,
        'dewpoint_c': dewpointC,
        'dewpoint_f': dewpointF,
        'vis_km': visKm,
        'vis_miles': visMiles,
        'uv': uv,
        'gust_mph': gustMph,
        'gust_kph': gustKph,
      };
}
