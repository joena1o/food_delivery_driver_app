import 'package:flutter/material.dart';

import 'Components/PendingCard.dart';

class PendingOrders extends StatefulWidget {
  @override
  _PendingOrdersState createState() => _PendingOrdersState();
}

class _PendingOrdersState extends State<PendingOrders> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Pending Orders", style: TextStyle(color: Colors.white),),
      ),

      body: Container(

        width: size.width,
        height: size.height,
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext ctx, i){

              return PendingCard();

        }),

      )

    );
  }
}
