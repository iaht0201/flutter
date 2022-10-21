import 'package:flutter/material.dart';
import 'package:g5/Form/login_page.dart';
import 'package:g5/Form/register_page.dart';
import 'package:g5/class_room/homepage_class_room.dart';
import 'package:g5/destination.dart';
import 'package:g5/destination_page.dart';
import 'package:g5/home_page.dart';
import 'package:g5/ig.dart';
// Ham chinh chay giao dien dau tien
void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/login' : (context) => Login(),
        '/register' : (context) => Register() ,
      },
      home: Login(),
      color: Colors.black,
    )
  );
}

