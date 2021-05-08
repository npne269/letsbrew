import 'package:coffee/globals.dart';
import 'package:flutter/material.dart';

class MyTextIcon extends StatelessWidget {
  final String label;
  final double width;
  final VoidCallback onPressed;

  const MyTextIcon({
    Key? key,
    required this.label,
    required this.width,
    required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: width,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: kBlack,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ); //todo
  }
}
