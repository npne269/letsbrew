import 'package:coffee/components/MyTextIcon.dart';
import 'package:coffee/globals.dart';
import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  final VoidCallback addBtn;
  final VoidCallback subBtn;
  final double width;

  const MyCustomButton({
    Key? key,
    this.width = 40, //default width but can override later
    required this.addBtn,
    required this.subBtn,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: kWhite,
            width: 2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextIcon(label: '_', width: width, onPressed: subBtn),
            Container(
              width: 40,
              alignment: Alignment.center,
              child: Text(
                '1',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            MyTextIcon(label: '+', width: width, onPressed: addBtn),
          ],
        ),
      ),
    );
  }
}
