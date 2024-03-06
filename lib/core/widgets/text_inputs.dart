import 'package:flutter/material.dart';

class TextInputEmail extends StatefulWidget {
  const TextInputEmail({super.key});

  @override
  State<TextInputEmail> createState() => _TextInputEmailState();
}

class _TextInputEmailState extends State<TextInputEmail> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('hello'),
        Expanded(
          child: TextField(),
        )
      ],
    );
  }
}
