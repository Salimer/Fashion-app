import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/gen/assets.gen.dart';

class ImageSwitchingWidget extends StatelessWidget {
  const ImageSwitchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      Assets.images.aaa.path,
      Assets.images.backkkkk.path
    ]; 
    return Container(
      child: CarouselSlider(
        items: imageUrls.map((image) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text('text $image', style: TextStyle(
                fontSize: 40,
              )),
            ),
          );
        }).toList(), 
        options: CarouselOptions(
          height: 300,
          viewportFraction: 1,
          enableInfiniteScroll: true,
          autoPlay: true,
          pauseAutoPlayOnTouch: false,
          autoPlayCurve: Curves.easeInOut
        ),),
    );
  }
}