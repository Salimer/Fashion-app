import 'package:fashion_app/core/constants/colors.dart';
import 'package:fashion_app/features/home/presentation/widgets/category_list_widget.dart';
import 'package:fashion_app/features/home/presentation/widgets/image_fader_widget.dart';
import 'package:fashion_app/features/home/presentation/widgets/product_card_widget.dart';
import 'package:fashion_app/features/home/presentation/widgets/product_filters_widget.dart';
import 'package:fashion_app/features/home/presentation/widgets/product_list_widget.dart';
import 'package:fashion_app/features/home/presentation/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/gen/assets.gen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    const double columnGap = 15;
    return Scaffold(
      appBar: _buildAppBar(),
      drawer: Drawer(
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Discover the best app',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      'To buy and choose clothes',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: columnGap),
                    SearchBarWidget(),
                    SizedBox(height: columnGap),
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Stack(
                        children: [
                          ImageFaderWidget(),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 0),
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Colors.black,
                                    )),
                                child: Text(
                                  'Learn More',
                                  style: TextStyle(
                                      color: redButton,
                                      fontSize: 20,
                                      fontFamily: 'times new roman',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: columnGap),
            Container(
              decoration: BoxDecoration(
                color: redButton,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New Arrival Collection',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 251, 0),
                            fontFamily: 'times new roman',
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              side: MaterialStateProperty.all(
                                  BorderSide(color: Colors.white)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black)),
                          onPressed: () {},
                          child: Text(
                            'See all',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  ProductFiltersWidget(),
                  ProductListWidget(),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 90,
                          child: Divider(thickness: 3, color: Colors.black),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Recommended for you',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontFamily: 'times new roman',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          child: CategoryListWidget(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }





  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        'My Fashion App',
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: Colors.black,
      // leading: IconButton(
      //     onPressed: () {}, icon: Icon(Icons.menu), color: Colors.white),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Container(
            height: 50,
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: redButton, width: 3)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Assets.images.icon.image(),
            ),
          ),
        ),
      ],
    );
  }
}
