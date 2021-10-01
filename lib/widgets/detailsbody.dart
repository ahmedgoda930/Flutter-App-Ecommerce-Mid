import 'package:ecommerce/constants.dart';
import 'package:ecommerce/model/product.dart';
import 'package:ecommerce/widgets/product_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_dot.dart';

class DetailsBody extends StatelessWidget {
  final Product? product;
  const DetailsBody({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          width: double.infinity,
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImage(
                  size: size,
                  image: product!.image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(
                      fillcolor: kTextLightColor,
                    ),
                    ColorDot(
                      fillcolor: Colors.red,
                      isSelected: true,
                    ),
                    ColorDot(
                      fillcolor: Colors.green,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  this.product!.subTitle as String,
                  style: GoogleFonts.almarai(),
                  textAlign: TextAlign.right,
                ),
              ),
              Text(
                'السعر ${this.product!.price.toString()}\$',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            // margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 1.5,
                vertical: kDefaultPadding / 2),
            child: Text(
              this.product!.description as String,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.right,
            ),
          ),
        ),
      ],
    );
  }
}

  // Image(
  //         image: AssetImage(this.product!.image as String),
  //       ),
