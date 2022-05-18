import 'package:flutter/material.dart';


class SignUpIn extends StatefulWidget {

  SignUpIn({Key? key, this.callback}):super(key: key);

  var callback;

  @override
  _SignUpInState createState() => _SignUpInState();
}

class _SignUpInState extends State<SignUpIn> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.orange,
        child: ListView(
          children: [
            Container(
              height: 100,
            ),
            Center(
                child:Container(
                  margin: EdgeInsets.only(bottom: 30),
              child: Text("BigBite Drivers", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),),
            )),

            Container(
              margin: EdgeInsets.all(30),
              color: Colors.white,
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [

                  Container(
                    padding: EdgeInsets.all(30),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Username"
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(30),

                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Password"
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(30),
                    child: FlatButton(
                      color: Colors.orange,
                      onPressed: (){

                        widget.callback();

                      },
                      child: Text("Login", style: TextStyle(color: Colors.white),),
                    )
                  ),

                ],
              ),
            )

          ],
        ),


      ),


    );
  }
}
