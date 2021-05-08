import 'package:coffee/components/MyCustomButton.dart';
import 'package:coffee/globals.dart';
import 'package:flutter/material.dart';

class MyCartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        child: Image.asset('images/coffee.png'),
      ),
      title: Text('Coffee Title'),
      subtitle: Text(
        '\$1200',
        style: TextStyle(
          color: kOrange,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Container(
        width: 80,
        height: 40,
        child: Center(
          child: MyCustomButton(
            width: 10,
            addBtn: () => print('added'),
            subBtn: () => print('subbs'),
          ),
        ),
      ),
    );
  }
}
