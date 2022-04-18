import 'package:desafio_keyworks_mobile/src/core/providers/interfaces/iapi_provider.dart';
import 'package:dio/dio.dart';

class ApiProvider implements IApiProvider {
  static String baseUrl = "https://api.spacexdata.com/v4";
  Dio dio = Dio();
  ApiProvider() {
    var options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 30000,
      receiveTimeout: 30000,
    );
    dio.options = options;
  }

  @override
  Future<dynamic> get(String route) async {
    var response = await dio.get(route);
    return response.data;
  }
}
