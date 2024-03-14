import 'package:fashion_app/features/home/data/models/category_model.dart';

class Product {
  final int id;
  final String title;
  final num price;
  final String description;
  final Category category;
  final List<String> images;

  const Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.images});

  factory Product.fromJson(Map<String, dynamic> json) => Product(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      category: Category.fromJson(json['category']),
      images: (json['images'] as List).cast<String>());
}
