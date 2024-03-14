import 'dart:convert';

import 'package:http/http.dart';

class ResponseModel {
  final bool success;
  final dynamic data;
  final String error;
  final int statusCode;

  const ResponseModel({
    required this.success,
    required this.data,
    required this.error,
    required this.statusCode,
  });

  factory ResponseModel.fromResponse(Response response) {
    final json = jsonDecode(response.body);
    return ResponseModel(
        success: response.statusCode == 200,
        data: json,
        error: 'error',
        statusCode: response.statusCode);
  }
}
