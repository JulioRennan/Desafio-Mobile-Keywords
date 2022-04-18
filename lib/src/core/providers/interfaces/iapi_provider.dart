abstract class IApiProvider<T> {
  Future<dynamic> get(String route);
}