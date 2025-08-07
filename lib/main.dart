import 'package:demo_app/homepage.dart';
import 'package:demo_app/login.dart';
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: 'login',
  routes:{
    'login':(context)=>MyLoginPage(),
    'homepage':(context)=>NewPage()
  },
));


