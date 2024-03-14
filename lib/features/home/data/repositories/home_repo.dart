import 'dart:convert';

import 'package:fashion_app/core/services/api_service.dart';
import 'package:fashion_app/features/home/data/models/category_model.dart';
import 'package:fashion_app/features/home/data/models/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

const String baseUrl = 'https://api.escuelajs.co/api/v1/';

final productProvider = FutureProvider<List<Product>>((ref) async {
  final url = Uri.parse('${baseUrl}products');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body) as List;
    return data.map((json) => Product.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load products');
  }
});

class HomeRepo {
  final ApiService api = ApiService();

  Future<List<Category>> getCategories() async {
    final response = await api.get('categories');
    print(response.data);
    if (response.success) {
      final data = response.data as List;
      return data.map((json) => Category.fromJson(json)).toList();
    } else {
      throw Exception(response.error);
    }
  }
}
