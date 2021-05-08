import 'package:coffee/globals.dart';
import 'package:flutter/material.dart';

class TotalListTile extends StatelessWidget {
  final String label;
  final double value;
  final double fontSize;
  final Color color;

  const TotalListTile({
    Key? key,
    required this.label,
    required this.value,
    this.fontSize = 16,
    this.color = kBlack,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: kDarkBlue.withOpacity(0.5),
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '\$$value',
            style: TextStyle(
              color: color,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
