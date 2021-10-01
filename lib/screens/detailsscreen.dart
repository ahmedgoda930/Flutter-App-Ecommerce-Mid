import 'package:ecommerce/constants.dart';
import 'package:ecommerce/model/product.dart';
import 'package:ecommerce/widgets/detailsbody.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreed extends StatelessWidget {
  final Product? product;
  const DetailsScreed({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBarDetails(context),
        body: DetailsBody(
          product: this.product,
        ));
  }

  AppBar AppBarDetails(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
      ),
      backgroundColor: kBackgroundColor,
      title: Text(
        this.product!.title as String,
        style: Theme.of(context).textTheme.bodyText1,
        textAlign: TextAlign.right,
      ),
    );
  }
}
