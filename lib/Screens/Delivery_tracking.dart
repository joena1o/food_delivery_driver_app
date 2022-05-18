import 'package:flutter/material.dart';

import 'Components/BottomTrackingNav.dart';

class Delivery_tracking extends StatefulWidget {
  @override
  _Delivery_trackingState createState() => _Delivery_trackingState();
}

class _Delivery_trackingState extends State<Delivery_tracking> {

  bool fullscreen = false;

  Minimize(){

    setState((){

      fullscreen = false;

    });

  }

  @override
  Widget build(BuildContext context) {



    Size size = MediaQuery.of(context).size;

    return Scaffold(

      appBar: AppBar(
        title: Text("Delivery Tracking"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),

      body: Container(

        width: size.width,
        height: size.height,
        child: Column(
          children: [

          Visibility(
            visible: !fullscreen,
            child: Container(
                width: size.width,
              height: (size.height*.4),
              color: Colors.grey,
            )),

            Visibility(
                visible: fullscreen,
                child: Container(
              width: size.width,
              height: size.height*.79,
              color: Colors.grey,
            )),

            Visibility(
              visible: !fullscreen,
              child:Container(
              width: size.width,
              height: size.height*.39,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: FlatButton(
                      onPressed: (){

                        setState(() {

                          fullscreen = true;

                        });

                      },
                      child: Text("View Map fullscreen", style: TextStyle(fontSize: 16, color: Colors.orange, fontWeight: FontWeight.bold),),
                    )),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: Text("Delivery to: Hyefur Jonathan", style: TextStyle(fontSize: 16),),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: Text("Location: Kofare Industrial Layout", style: TextStyle(fontSize: 16)),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: Text("Coordinates: Lat:09.90, Lng:0.01", style: TextStyle(fontSize: 16)),
                  )
                ],
              ),
            )),


          ],
        ),

      ),
      bottomNavigationBar: BottomAppBar(
        child: BottomTrackingNav(callback: Minimize, state: fullscreen),
      ),


    );
  }
}
