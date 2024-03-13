class Category {
  final int id;
  final String name;
  final String image;

  const Category({required this.id, required this.name, required this.image});

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json['id'],
        name: json['name'],
        image: json['image'],
      );
}
