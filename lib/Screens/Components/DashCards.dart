import 'package:flutter/material.dart';

class DashCards extends StatelessWidget {

  DashCards({Key? key, required this.card_text, required this.card_value}):super(key: key);


  final String card_text;
  final int card_value;


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(

      padding: EdgeInsets.all(20),

      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),

      decoration: BoxDecoration(

        color: Colors.white,

        boxShadow: [

          BoxShadow(

            color: Color.fromRGBO(250,250,250,1),

            spreadRadius: 6,

            blurRadius: 1

          )

        ]

      ),

      width: size.width,

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Container(
              margin: EdgeInsets.symmetric(vertical:20),
              child:Text(("${card_text}"), style: TextStyle(fontSize: 18),)),

          Container(
              margin: EdgeInsets.symmetric(vertical:20),
              child:Text("${card_value}", style: TextStyle(color:Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 22),)),

        ],

      ),

    );
  }
}
