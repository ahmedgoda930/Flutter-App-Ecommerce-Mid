import 'package:ecommerce/constants.dart';
import 'package:ecommerce/model/product.dart';
import 'package:ecommerce/screens/detailsscreen.dart';
import 'package:ecommerce/widgets/productcart.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70.0),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => ProductCart(
                    itemindex: index,
                    product: products[index],
                    onproess: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreed(
                              product: products[index],
                            ),
                          ));
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
