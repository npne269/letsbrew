import 'package:coffee/globals.dart';
import 'package:coffee/models/models.dart';
import 'package:flutter/material.dart';

class MyCoffeeListCard extends StatelessWidget {
  final String id;
  final String title;
  final double price;
  final String img;

  const MyCoffeeListCard({
    Key? key,
    required this.id,
    required this.title,
    required this.price,
    required this.img,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        '/details',
        arguments: DetailsArgs(
          id: id,
          title: title,
          img: img,
          price: price,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: kLightGray,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(img),
                  ),
                  Container(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 20,
                width: 60,
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: kDarkBlue,
                ),
                child: Text(
                  '\$$price',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
