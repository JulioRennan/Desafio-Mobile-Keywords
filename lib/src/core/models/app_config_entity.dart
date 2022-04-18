import 'dart:convert';

class AppConfigEntity {
  bool isLogged;
  AppConfigEntity({
    required this.isLogged,
  });

  Map<String, dynamic> toMap() {
    return {
      'isLogged': isLogged,
    };
  }

  factory AppConfigEntity.fromMap(Map<String, dynamic> map) {
    return AppConfigEntity(
      isLogged: map['isLogged'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AppConfigEntity.fromJson(String source) => AppConfigEntity.fromMap(json.decode(source));
}
