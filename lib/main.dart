import 'package:flutter/material.dart';
import 'package:g5/Form/login_page.dart';
import 'package:g5/Form/register_page.dart';
import 'package:g5/class_room/homepage_class_room.dart';
import 'package:g5/destination.dart';
import 'package:g5/destination_page.dart';
import 'package:g5/home_page.dart';
import 'package:g5/ig.dart';
import 'package:g5/product_page.dart';
import 'package:g5/provider/product_provider.dart';
import 'package:provider/provider.dart';

// Ham chinh chay giao dien dau tien
void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => ProductProvider())],
    child: MaterialApp(
      theme: ThemeData(

      ),
      debugShowCheckedModeBanner: false,
      routes: {
        // '/login': (context) => Login(),
        // '/register': (context) => Register(),
        '/home': (context) =>ProductListPage(),
      },
      home: ProductListPage(),
      color: Colors.black,
    ),
  ));
}
