import 'package:flutter/material.dart';
import 'Screens/WelcomeScreen.dart';
import 'dart:async';
import '../Screens/Auth/SignUp_IN.dart';
import '../Screens/Dashboard.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {

  void initState(){

    super.initState();

    Boot();

  }

  bool _switch = false;
  bool authsuccess = false;

  Boot(){

    Timer(Duration(seconds: 5), (){

      setState((){

        _switch = true;

        });

    });

  }

  AuthSuccess(){

    setState((){

      authsuccess = true;

    });

  }

  @override
  Widget build(BuildContext context) {
    return (!_switch)?WelcomeScreen():((!authsuccess)?SignUpIn(callback: AuthSuccess,):DashBoard());
  }
}
