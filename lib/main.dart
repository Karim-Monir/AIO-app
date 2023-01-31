import 'package:flutter/material.dart';
//import 'package:sip_n_pee/home_screen.dart';
import 'package:sip_n_pee/login_screen.dart';
// import 'package:sip_n_pee/messenger_screen.dart';
// import 'package:sip_n_pee/users_screen.dart';

import 'package:sip_n_pee/counter_screen.dart';

void main() {
  runApp(Sip_n_Pee());
  //Sip_n_Pee sipNpee = Sip_n_Pee();
  //Widget sip_n_pee = Sip_n_Pee(); //polymorphism
}

//types of widgets in flutter are two types:
//Stateless widget
//Stateful widget

class Sip_n_Pee extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : LoginScreen(),
    );
  }
}
