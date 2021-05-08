import 'package:coffee/components/MyShape.dart';
import 'package:coffee/globals.dart';
import 'package:coffee/pages/ListPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //getting device size
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 0),
        children: [
          Container(
            height: size.height,
            color: kLightGray,
            child: Stack(
              children: [
                //top right shape
                CustomPaint(
                  size: Size(size.width, size.height * 0.3),
                  painter: MyShape(),
                ),

                //hidden Rectangle for white curve
                Positioned(
                  top: size.height * 0.25,
                  child: Container(
                    height: size.height * 0.15,
                    width: size.height * 0.1,
                    color: kWhite,
                  ),
                ),

                //circle

                Positioned(
                  top: size.height * 0.15,
                  child: Container(
                    height: size.height * 0.2,
                    width: size.height * 0.2,
                    decoration: BoxDecoration(
                      color: kDarkBlue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),

                //Content Rectangle
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(25),
                    height: size.height * 0.65,
                    decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(80),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: size.width * 0.8,
                          child: Text(
                            'Let\'s Brew Coffee',
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Flexible(
                          child: Image.asset('images/coffee.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kOrange,
        child: Icon(Icons.keyboard_arrow_down),
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (_) => ListPage(),
        ),
      ),
    );
  }
}
