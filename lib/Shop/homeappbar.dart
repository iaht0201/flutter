import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
          ),

          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "Shop TM",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(), // dung gian cach 2 ben
          Badge(
            badgeColor: Colors.redAccent,
            padding: EdgeInsets.all(7),
            badgeContent: Text(
              "5",
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 35,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
