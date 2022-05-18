import 'package:flutter/material.dart';

class AcceptCard extends StatefulWidget {
  @override
  _AcceptCardState createState() => _AcceptCardState();
}

class _AcceptCardState extends State<AcceptCard> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(

      width: size.width,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [

            BoxShadow(
                color: Color.fromRGBO(250, 250, 250, 1),
                spreadRadius: 5,
                blurRadius: 1
            )

          ]
      ),
      child: Column(

        children: [

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Container(
                width: size.width*0.2,
                height: size.width*0.2,
                child: Image(image: AssetImage("assets/tracking.png"),),

              ),


              Container(
                width: size.width*0.53,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      child: Text(("Items:").toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, color:Colors.grey, fontSize: 14),),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      child: Text("Items list goes here", style: TextStyle( fontSize: 16)),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      child: Text(("Customer:").toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, color:Colors.grey, fontSize: 14)),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      child: Text("Hyefur Jonathan", style: TextStyle( fontSize: 16)),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      child: Text(("Location:").toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, color:Colors.grey, fontSize: 14)),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      child: Text("Kofare Industrial, Layout", style: TextStyle( fontSize: 16),),
                    ),



                  ],
                ),

              ),

            ],

          ),

          Container(
            width: size.width,
            padding: EdgeInsets.symmetric(vertical: 7),
            child: FlatButton(
              color: Colors.orangeAccent,
              onPressed: (){

              },
              child: Text("Track Delivery", style: TextStyle(color:Colors.white),),
            ),
          ),

          Container(
            width: size.width,
            padding: EdgeInsets.symmetric(vertical: 7),
            child:  FlatButton(
              color: Colors.red,
              onPressed: (){

              },
              child: Text("Call Customer", style: TextStyle(color:Colors.white)),
            ),
          )

        ],
      ),

    );
  }
}
