import 'package:dio/dio.dart';

class ApiService{
  ApiService(this.dio);

final Dio dio;

final String baseUrl = 'https://www.googleapis.com/books/v1/';

Future<Map<String,dynamic>> get({required String endPoints})async {
  Response response = await dio.get('$baseUrl$endPoints');

  return  response.data;
}

}