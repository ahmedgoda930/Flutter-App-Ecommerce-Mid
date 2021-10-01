import 'package:ecommerce/constants.dart';
import 'package:ecommerce/widgets/homebody.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: HomeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar HomeAppBar() {
    return AppBar(
      title: Text(
        'مرحبا بك فى متجر الالكترونيات',
        style: GoogleFonts.almarai(),
        textAlign: TextAlign.right,
      ),
      elevation: 0,
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ],
    );
  }
}
