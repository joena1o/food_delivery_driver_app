import 'package:flutter/material.dart';


class Dp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: 220,
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image(image: AssetImage("assets/dp.jpg"), fit: BoxFit.cover, ),
      ),


    );
  }
}
