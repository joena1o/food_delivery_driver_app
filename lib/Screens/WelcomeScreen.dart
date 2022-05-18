import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget{
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(

        body:Container(

          width: size.width,
          height: size.height,
          color: Colors.orange,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              Text("BigBite Driver", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold, fontSize: 23),),

              Container(

                padding: EdgeInsets.all(60),

                child: Center(

                  child: CircularProgressIndicator(color: Colors.white,),
                ),

              )

            ],

          )

        )

    );
  }
}
