import 'package:fashion_app/features/home/data/models/product_model.dart';
import 'package:fashion_app/features/home/data/repositories/home_repo.dart';
import 'package:fashion_app/features/home/presentation/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductListWidget extends ConsumerWidget {
  const ProductListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Product>> products = ref.watch(productProvider);

    return products.when(
      data: (data) => SizedBox(
        height: 250,
        child: ListView.separated(
          separatorBuilder:(context, index) => SizedBox(width: 0,),
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index) {
            final product = data[index];
            return ProductCardWidget(
              productName: product.title,
                productNameColor: Colors.white,
                productPrice: product.price.toString());
          },
        ),
      ),
      loading: () => Center(child: CircularProgressIndicator()),
      error: (error, StackTrace) => Text('Error: $error'),
    );
  }
}
