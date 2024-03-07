import 'package:flutter/material.dart';

class LoginTextFieldWidget extends StatefulWidget {
  final String inputPlaceholder;
  final Widget? firstIcon;
  final Widget? secondIcon;
  
  const LoginTextFieldWidget({super.key, required this.inputPlaceholder, this.firstIcon, this.secondIcon});

  @override
  State<LoginTextFieldWidget> createState() => _LoginTextFieldWidgetState();
}

class _LoginTextFieldWidgetState extends State<LoginTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        prefixIconConstraints: BoxConstraints(
          minWidth: 50,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 15, right: 8),
          child: widget.firstIcon,
        ),
        suffixIcon: widget.secondIcon,
        hintText: widget.inputPlaceholder,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 0,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
