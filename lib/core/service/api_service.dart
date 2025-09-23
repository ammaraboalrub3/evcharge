import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  final baseUrl = "https://evcharge.services/APIs/";

  ApiService(this.dio);

  Future<dynamic> get({required String endPoint}) async {
    final response = await dio.get("$baseUrl$endPoint");
    return response.data;
  }
}
