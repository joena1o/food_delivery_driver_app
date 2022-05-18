import 'package:flutter/material.dart';

class BottomTrackingNav extends StatefulWidget {

  BottomTrackingNav({Key? key, required this.callback, required this.state}):super(key: key);

  final Function callback;
  final bool state;

  @override
  _BottomTrackingNavState createState() => _BottomTrackingNavState();
}

class _BottomTrackingNavState extends State<BottomTrackingNav> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(

      width: size.width,
      height: size.height*.09,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.call, color: Colors.black54, size: 30),
          ),
          Visibility(
              visible: widget.state,
              child:IconButton(
            onPressed: (){

              widget.callback();

            },
            icon: Icon(Icons.visibility, color: Colors.black54, size: 30),
          )),
          IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.message, color: Colors.black54, size: 30,),
          ),
        ],
      ),

    );
  }
}
