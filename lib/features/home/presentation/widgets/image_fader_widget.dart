import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fashion_app/gen/assets.gen.dart';

class ImageFaderWidget extends StatefulWidget {
  const ImageFaderWidget({super.key});

  @override
  State<ImageFaderWidget> createState() => _ImageFaderWidgetState();
}

class _ImageFaderWidgetState extends State<ImageFaderWidget> {
  int _currentIndex = 0;
  List<String> _imageUrls = [
    Assets.images.backkkk.path,
    Assets.images.backkkkk.path
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(
      Duration(seconds: 5),
      (Timer timer) {
        setState(() {
          _currentIndex = (_currentIndex + 1) % _imageUrls.length;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: AnimatedSwitcher(
        duration: const Duration(seconds: 5),
        child: Image.asset(_imageUrls[_currentIndex],
            key: ValueKey<int>(_currentIndex),
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    );
  }
}
