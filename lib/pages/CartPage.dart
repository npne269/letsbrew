import 'package:coffee/components/MyCartList.dart';
import 'package:coffee/components/TotalListTile.dart';
import 'package:coffee/globals.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.close,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Shopping Cart',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.check,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: kWhite,
        child: Column(
          children: [
            //Top Banner
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: kOrange.withOpacity(0.3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: kOrange,
                    size: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'You have 4 items in your shopping cart.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kOrange,
                    ),
                  )
                ],
              ),
            ),

            //All carts Items List
            Expanded(
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                itemBuilder: (_, index) => MyCartList(), //todo
                separatorBuilder: (_, index) => Divider(),
                itemCount: 10,
              ),
            ),

            Divider(),

            //Total list Items
            TotalListTile(label: 'Total', value: 20.0),
            TotalListTile(label: 'Discount', value: 10.0),
            Divider(),
            Divider(),
            TotalListTile(
              label: 'Grand Total',
              value: 10.0,
              fontSize: 20,
              color: kOrange,
            ),
            Divider(),
            Divider(),

            //Checkout Button

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Check oUT sucessfully.'),
                    ),
                  );
                },
                child: Text(
                  'Checkout',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kBlack),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
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
