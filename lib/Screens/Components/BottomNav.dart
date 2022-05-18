import 'package:flutter/material.dart';


class BottomNav extends StatefulWidget {

  BottomNav({Key? key, required this.callBack, required this.state}):super(key: key);

  Function callBack;
  final int state;

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

              widget.callBack(0);

            },
            icon: Icon(Icons.home, color: (widget.state==0)?Colors.orangeAccent:Colors.black54, size: 30),
          ),

          IconButton(
            onPressed: (){

              widget.callBack(1);

            },
            icon: Icon(Icons.history, color: (widget.state==1)?Colors.orangeAccent:Colors.black54, size: 30,),
          ),

          IconButton(
            onPressed: (){

              widget.callBack(2);

            },
            icon: Icon(Icons.person, color: (widget.state==2)?Colors.orangeAccent:Colors.black54, size: 30,),
          )

        ]
      ),

    );
  }
}
