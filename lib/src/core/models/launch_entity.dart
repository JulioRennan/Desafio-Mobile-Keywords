import 'dart:convert';

class LaunchEntity {
  String id;
  String name;
  DateTime dateTime;
  String idLaunchPad;
  LaunchEntity({
    required this.id,
    required this.name,
    required this.dateTime,
    required this.idLaunchPad,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'dateTime': dateTime,
      'idLaunchpad': idLaunchPad
    };
  }

  factory LaunchEntity.fromMap(Map<String, dynamic> map) {
    return LaunchEntity(
      id: map['id'],
      name: map['name'],
      dateTime: DateTime.parse(map['date_utc']),
      idLaunchPad: map['launchpad'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LaunchEntity.fromJson(String source) =>
      LaunchEntity.fromMap(json.decode(source));
}
