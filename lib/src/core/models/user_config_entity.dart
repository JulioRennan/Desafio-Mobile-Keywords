import 'dart:convert';

class UserConfigEntity {
  String name;
  bool isDarkTheme;
  String language;
  UserConfigEntity({
    required this.name,
    required this.isDarkTheme,
    required this.language,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'isDarkTheme': isDarkTheme,
      'language': language,
    };
  }

  factory UserConfigEntity.fromMap(Map<String, dynamic> map) {
    return UserConfigEntity(
      name: map['name'] ?? '',
      isDarkTheme: map['isDarkTheme'] ?? false,
      language: map['language'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserConfigEntity.fromJson(String source) => UserConfigEntity.fromMap(json.decode(source));
}
