import 'package:flutter/material.dart';

import 'Components/AcceptedCards.dart';

class AcceptOrder extends StatefulWidget {
  @override
  _AcceptOrderState createState() => _AcceptOrderState();
}

class _AcceptOrderState extends State<AcceptOrder> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Accepted Orders", style: TextStyle(color: Colors.white),),
        ),

        body: Container(

          width: size.width,
          height: size.height,
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext ctx, i){

                return AcceptCard();

              }),

        )

    );
  }
}
