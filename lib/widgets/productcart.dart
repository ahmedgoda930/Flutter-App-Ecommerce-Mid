import 'package:ecommerce/model/product.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ProductCart extends StatelessWidget {
  final int? itemindex;
  final Product? product;
  final onproess;
  const ProductCart({
    Key? key,
    this.itemindex,
    this.product,
    this.onproess,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 190.0,
      child: InkWell(
        onTap: onproess,
        child: Stack(
          children: [
            Container(
              height: 166.0,
              // alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black12,
                  )
                ],
              ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                height: 160.0,
                width: 200.0,
                child: Image.asset(product!.image as String),
              ),
            ),
            Positioned(
              child: SizedBox(
                height: 136.0,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height: 30,
                    // ),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                      ),
                      child: Text(
                        product!.title as String,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                      ),
                      child: Text(
                        product!.subTitle as String,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(kDefaultPadding),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding,
                            vertical: kDefaultPadding / 5),
                        child: Text(
                          'السعر ${product!.price}\$',
                          style: TextStyle(fontSize: 15),
                        ),
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
