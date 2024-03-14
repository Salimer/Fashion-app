import 'dart:convert';

import 'package:fashion_app/core/services/api_service.dart';
import 'package:fashion_app/features/home/data/models/category_model.dart';
import 'package:fashion_app/features/home/data/models/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

const String baseUrl = 'https://api.escuelajs.co/api/v1/';

class HomeRepo {
  final ApiService api = ApiService();

  Future<List<Category>> getCategories() async {
    final response = await api.get('categories');
    if (response.success) {
      final data = response.data as List;
      return data.map((json) => Category.fromJson(json)).toList();
    } else {
      throw Exception(response.error);
    }
  }

  Future<List<Product>> getProducts() async {
    final response = await api.get('products');
    if (response.success) {
      final data = response.data as List;
      return data.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception(response.error);
    }
  }
}
