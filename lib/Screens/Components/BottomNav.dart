import 'package:flutter/material.dart';


class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(

      width: size.width,
      padding: EdgeInsets.symmetric(horizontal: 30),
      height: size.height*.08,
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children:[

          IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.home, color: Colors.orangeAccent, size: 30),
          ),

          IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.history, color: Colors.black, size: 30,),
          ),

          IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.person, color: Colors.black, size: 30,),
          )

        ]
      ),

    );
  }
}
