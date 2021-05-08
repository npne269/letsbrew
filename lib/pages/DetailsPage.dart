import 'package:coffee/components/MyCustomButton.dart';
import 'package:coffee/globals.dart';
import 'package:coffee/models/models.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final DetailsArgs args =
        ModalRoute.of(context)!.settings.arguments as DetailsArgs;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined),
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: size.height * 0.3,
                color: kDarkBlue,
              ),
              Container(
                height: size.height * 0.1,
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.all(20),
                  physics: BouncingScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //CHip

                        Chip(
                          backgroundColor: kOrange.withOpacity(0.3),
                          avatar: Icon(
                            Icons.star,
                            color: kOrange,
                          ),
                          label: Text(
                            '4.0',
                            style: TextStyle(
                              color: kOrange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        ActionChip(
                          backgroundColor: kOrange.withOpacity(0.3),
                          label: Icon(
                            Icons.star,
                            color: kOrange,
                          ),
                          onPressed: () => print('wow pressed'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      title: Text(
                        args.title,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('${args.title}\'s subtitle'),
                    ),
                    Divider(),
                    Text(
                      'Description',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus iure fuga eligendi molestias optio iusto amet saepe at. Dignissimos, deserunt?'),
                    ),
                    Divider(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Quantity Selector Button
                        MyCustomButton(
                          addBtn: () => print('added'),
                          subBtn: () => print('sub'),
                        ),

                        //aDDING cart Button

                        ElevatedButton.icon(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(kBlack),
                          ),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                duration: Duration(milliseconds: 200),
                                content: Text('Added To Cart'),
                              ),
                            );
                          },
                          icon: Icon(Icons.shopping_bag_outlined),
                          label: Text('Add to cart'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),

          //Images with shadow
          Container(
            height: size.height * 0.375,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 10,
                    width: 150,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: kOrange,
                          blurRadius: 25.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    args.img,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),

          //price tag
          Positioned(
            right: 0,
            top: size.height * 0.3,
            child: Container(
              height: 40,
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                ),
                color: kOrange,
              ),
              child: Text(
                '\$${args.price}',
                style: TextStyle(
                  color: kWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
