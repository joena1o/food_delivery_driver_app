import 'package:flutter/material.dart';

import 'Components/DeliveryCard.dart';

class DeliveredOrders extends StatefulWidget {
  @override
  _DeliveredOrdersState createState() => _DeliveredOrdersState();
}

class _DeliveredOrdersState extends State<DeliveredOrders> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Delivered Orders", style: TextStyle(color: Colors.white),),
        ),

        body: Container(

          width: size.width,
          height: size.height,
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext ctx, i){

                return DeliveryCard();

              }),

        )

    );
  }
}
