import 'package:flutter/material.dart';

import 'AcceptedOrders.dart';
import 'Components/BottomNav.dart';
import 'Components/DashCards.dart';
import 'DeliveredOrders.dart';
import 'DriverProfile.dart';
import 'History.dart';
import 'PendingOrders.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  var currentPage = 0;
  //For the index of navs


  //SwitchingNavs
  SwitchNav(index){

    setState((){

      currentPage = index;

    });

  }


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black87,
        title: Text((currentPage==0)?("Dashboard"):((currentPage==2)?("Profile Page"):("History")), style: TextStyle(color:Colors.white, fontSize: 17),)),

        drawer: (currentPage==0)?Drawer(

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
                child: Text(("SIGN OUT").toUpperCase(), style: TextStyle(fontWeight:FontWeight.bold, color: Colors.orange, letterSpacing: 1, fontSize: 17),),

              )

            ],
          ),

        )):null,

        body: (currentPage==0)?DashboardMain(context):((currentPage==2)?DriverProfile():History()),

      bottomNavigationBar: BottomAppBar(
        child: BottomNav(callBack: SwitchNav, state: currentPage),
      ),

    );
  }
  
  
  Widget DashboardMain(context){
    
    Size size = MediaQuery.of(context).size;
    
    return Container(
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
                    MaterialPageRoute(builder: (_)=> DeliveredOrders())
                );
              },
              child:DashCards(card_text: "Delivered Orders", card_value: 10,)),

        ],
      ),

    );
    
    
    
  }
  
}
