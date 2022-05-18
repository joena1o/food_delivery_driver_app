import 'package:flutter/material.dart';

import 'Components/Dp.dart';

class DriverProfile extends StatefulWidget {
  @override
  _DriverProfileState createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(

      width: size.width,
      height: size.height,
      child: Column(
        children: [

          Dp(),

          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text("Hyefur Jonathan", style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal)),
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text("08149056513", style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),),
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: FlatButton(
              color: Colors.grey[300],
              onPressed: (){

              },
              child: Text("Sign Out"),
            ),
          )



        ],
      ),

    );
  }
}
