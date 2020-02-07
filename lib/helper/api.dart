import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';

String url = 'https://reqres.in/api/users';

Dio dio = new Dio();

Future<dynamic> get() async {

  return dio.get('$url',
  options: Options(headers: {
            
          })).then((response) {
        
        print(response.data);
    return response.data;
  });
}
