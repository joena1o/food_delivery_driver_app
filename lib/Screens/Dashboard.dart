import 'package:flutter/material.dart';

import 'AcceptedOrders.dart';
import 'Components/BottomNav.dart';
import 'Components/DashCards.dart';
import 'PendingOrders.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black87,
        title: Text("Dashboard", style: TextStyle(color:Colors.white,),)),

        drawer: Drawer(

          child: Container(
            color: Colors.black87,
            child:ListView(
            children: [

              Container(

                height: 100,

              ),

              Container(
                padding: EdgeInsets.all(30),
                child: Text(("Pending Orders").toUpperCase(), style: TextStyle(fontWeight:FontWeight.normal, color: Colors.white, letterSpacing: 1, fontSize: 17),),

              ),

              Container(
                padding: EdgeInsets.all(30),
                child: Text(("Accepted Orders").toUpperCase(), style: TextStyle(fontWeight:FontWeight.normal, color: Colors.white, letterSpacing: 1, fontSize: 17),),

              ),

              Container(
                padding: EdgeInsets.all(30),
                child: Text(("Delivered Orders").toUpperCase(), style: TextStyle(fontWeight:FontWeight.normal, color: Colors.white, letterSpacing: 1, fontSize: 17),),

              ),

              Container(
                padding: EdgeInsets.all(30),
                child: Text(("Logout").toUpperCase(), style: TextStyle(fontWeight:FontWeight.bold, color: Colors.orange, letterSpacing: 1, fontSize: 17),),

              )

            ],
          ),

        )),

        body: Container(
        width: size.width,
        height: size.height,
        child: ListView(
          children: [

            GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_)=> PendingOrders())
                );
              },
              child: DashCards(card_text: "Pending Orders", card_value: 10,),
            ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_)=> AcceptOrder())
              );
            },

        child:DashCards(card_text: "Accepted Orders", card_value: 10,)),

        GestureDetector(
          onTap: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_)=> PendingOrders())
            );
          },
          child:DashCards(card_text: "Delivered Orders", card_value: 10,)),

            ],
          ),

      ),

      bottomNavigationBar: BottomAppBar(
        child: BottomNav(),
      ),

    );
  }
}
