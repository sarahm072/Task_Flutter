import 'package:flutter/material.dart';

class Custominput extends StatelessWidget {
  final String? hint;
  final bool obscure;
  final String Function(String?) valid;
  final TextInputType keyType;
  const Custominput(
      {super.key,
      required this.hint,
      required this.obscure,
      required this.valid,
       required this.keyType });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 343,
      child: TextFormField(
        keyboardType: keyType,
        obscureText: obscure,
        validator: valid,
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            hintText: hint),
      ),
    );
  }
}