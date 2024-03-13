import 'package:fashion_app/features/home/data/models/category_model.dart';
import 'package:fashion_app/features/home/data/repositories/home_repo.dart';
import 'package:fashion_app/features/home/presentation/widgets/category_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryListWidget extends ConsumerWidget {
  const CategoryListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Category>> categories = ref.watch(categoryProvider);

    return categories.when(
      data: (data) => GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200, mainAxisExtent: 250),
        itemCount: data.length,
        itemBuilder: (context, index) {
          final category = data[index];
          return CategoryCardWidget(
              nameColor: Colors.black,
              price: '',
              name: category.name,
              );
        },
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, StackTrace) => Text('Error: $error'),
    );
  }
}
