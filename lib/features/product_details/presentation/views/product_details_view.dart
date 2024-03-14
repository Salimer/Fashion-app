import 'package:fashion_app/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/gen/assets.gen.dart';
import 'package:flutter/widgets.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  static const List<Color> productColors = [
    Colors.red,
    Colors.blue,
    Colors.green
  ];

  static const List<String> sizes = ['S', 'M', 'L', 'XL'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redButton,
        title: Text('product name'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: -40,
            child: Image.asset(
              Assets.images.backk.path,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.8,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: redButton,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Product name',
                      style: TextStyle(color: yellowText, fontSize: 25),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$99',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: productColors
                              .map((color) => _buildColorCircle(color))
                              .toList(),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Size',
                          style: TextStyle(color: yellowText, fontSize: 25),
                        ),
                      ],
                    ),
                    Row(
                      children:
                          sizes.map((size) => _buildSizeChip(size)).toList(),
                    ),
                    Text(
                      'Description',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 50),
                            backgroundColor: Colors.black,
                            side: BorderSide(color: const Color.fromARGB(255, 140, 101, 101), width: 2)),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.shopping_cart, color: Colors.white),
                              SizedBox(width: 5),
                              Text(
                                'Buy Now',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildColorCircle(Color color) {
  return GestureDetector(
    onTap: () {
      // Update selected color logic here (e.g., using a state variable)
      print('Selected color: $color');
    },
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0), // Adjust spacing as needed
      width: 30.0, // Adjust size as needed
      height: 30.0, // Adjust size as needed
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    ),
  );
}

Widget _buildSizeChip(String size) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Text(
        size,
        style: TextStyle(color: redButton, fontWeight: FontWeight.w800),
      ),
    ),
  );
}
