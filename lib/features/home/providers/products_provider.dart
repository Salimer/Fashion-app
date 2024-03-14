import 'package:fashion_app/features/home/data/models/product_model.dart';
import 'package:fashion_app/features/home/data/repositories/home_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productProvider = FutureProvider<List<Product>>((ref) async {
  final HomeRepo homeRepo = HomeRepo();

  return homeRepo.getProducts();
});
