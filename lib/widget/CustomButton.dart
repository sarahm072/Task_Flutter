import 'package:flutter/material.dart';


class Custombutton extends StatelessWidget {
  final String title;
  final void Function()? onpress;
  const Custombutton({super.key, required this.title, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 343,
      child: MaterialButton(
        onPressed: onpress,
        color: const Color(0xfffdb3022),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xfffffffff)),
        ),
      ),
    );
  }
}