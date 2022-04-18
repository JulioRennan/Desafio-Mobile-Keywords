import 'dart:convert';

class LaunchpadEntity {
  String id;
  String name;
  String region;
  String locality;
  double latitude;
  double longitude;
  LaunchpadEntity({
    required this.id,
    required this.name,
    required this.region,
    required this.locality,
    required this.latitude,
    required this.longitude,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'region': region,
      'locality': locality,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory LaunchpadEntity.fromMap(Map<String, dynamic> map) {
    return LaunchpadEntity(
      id: map['id'],
      name: map['name'] ?? '',
      region: map['region'] ?? '',
      locality: map['locality'] ?? '',
      latitude: map['latitude']?.toDouble() ?? 0.0,
      longitude: map['longitude']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory LaunchpadEntity.fromJson(String source) =>
      LaunchpadEntity.fromMap(json.decode(source));
}
