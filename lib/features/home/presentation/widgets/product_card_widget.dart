import 'package:flutter/material.dart';
import 'package:fashion_app/gen/assets.gen.dart';
import 'package:flutter/widgets.dart';

class ProductCardWidget extends StatelessWidget {
  final Color productNameColor;
  final String productPrice;
  final String productName;
  const ProductCardWidget(
      {super.key,
      required this.productNameColor,
      required this.productPrice,
      required this.productName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                Assets.images.backkkkk.path,
                width: 135,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 150,
              child: Text(productName,
              overflow: TextOverflow.ellipsis,
               style: TextStyle(color: productNameColor))),
            Text(
              productPrice,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 251, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
