import 'package:fashion_app/core/models/response_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String _baseUrl = 'https://api.escuelajs.co/api/v1';
  final Map<String, String> _header = {
    'acceptContent': 'application/json',
  };

  Future<ResponseModel> get(String endPoint) async {
    final response = await http.get(_url(endPoint));
    return ResponseModel.fromResponse(response);
  }

  Uri _url(String endPoint) => Uri.parse('$_baseUrl/$endPoint');
}
