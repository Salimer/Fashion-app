import 'package:flutter/material.dart';
import 'package:fashion_app/gen/assets.gen.dart';

class CategoryCardWidget extends StatelessWidget {
  final Color nameColor;
  final String price;
  final String name;
  
  const CategoryCardWidget(
      {super.key,
      required this.nameColor,
      required this.price,
      required this.name,
     });

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
            const SizedBox(height: 10),
            Text(name, style: TextStyle(color: nameColor)),
            Text(
              price,
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 251, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
