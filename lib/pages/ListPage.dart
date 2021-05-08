import 'dart:math';

import 'package:coffee/components/MyCoffeeListCard.dart';
import 'package:coffee/globals.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20.0),
      height: size.height * 0.65,
      color: kWhite,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 10,
              bottom: 20,
            ),
            child: Text(
              'What\'s your fav?',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          //List of All Available Coffee
          Expanded(
            child: GridView(
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              children: List.generate(
                12,
                (index) => MyCoffeeListCard(
                  title: 'Coffee $index',
                  id: '$index',
                  img: 'images/coffee.png',
                  price: double.parse(
                    (Random().nextDouble() * 100).toStringAsFixed(1),
                  ), //Generates random prices
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
