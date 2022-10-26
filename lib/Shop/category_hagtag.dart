import 'dart:math';

import 'package:flutter/material.dart';
import 'package:g5/provider/product_provider.dart';
import 'package:provider/provider.dart';

class CategoryHagTag extends StatelessWidget {
  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ProductProvider>(context);
    provider.getCategory();

    // print(a.getCategory()) ;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 10),
        height: 30,
        child: Row(
          children: [
            ...provider.categories.map((e) {
              return Container(
                // width: MediaQuery.of(context).size.width * .25,
                decoration: BoxDecoration(
                  // color: Color(Random().nextInt(0xffffffff)),
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(30),
                ),
                margin: EdgeInsets.only(right: 15),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 5 , bottom: 5),
                  child: Center(
                    child: Text(
                      '#${e}',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                ),
              );
            })
            // ...b.list.map((e) {
            //
            // }).toList()
          ],
        ),
      ),
    );
  }
}
