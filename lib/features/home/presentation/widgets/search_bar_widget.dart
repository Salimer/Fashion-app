import 'package:fashion_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: 15,
        color: Colors.white,
      ),
      decoration: InputDecoration(
          filled: true,
          fillColor: redButton,
          hintText: 'Search for products',
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(
                color: Colors.white,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(
                color: Colors.white,
              )),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
    );
  }
}
