import 'package:flutter/material.dart';

class DeliveryCard extends StatefulWidget {
  @override
  _DeliveryCardState createState() => _DeliveryCardState();
}

class _DeliveryCardState extends State<DeliveryCard> {
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
                child: Image(image: AssetImage("assets/takeaway.png"),),

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

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text(("Delivered Date:").toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, color:Colors.grey, fontSize: 14)),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text("18th May, 2022", style: TextStyle( fontSize: 16),),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text(("Delivered Time:").toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, color:Colors.grey, fontSize: 14)),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text("2:41 pm", style: TextStyle( fontSize: 16),),
                    ),



                  ],
                ),

              ),

            ],

          ),


        ],
      ),

    );
  }
}
