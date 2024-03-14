import 'package:fashion_app/features/home/data/models/category_model.dart';
import 'package:fashion_app/features/home/data/repositories/home_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryProvider = FutureProvider<List<Category>>((ref) async {
  final HomeRepo homeRepo = HomeRepo();

  return homeRepo.getCategories();
});
