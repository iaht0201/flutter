import 'dart:math';

import 'package:flutter/material.dart';

class HagtagWidget extends StatelessWidget {
  HagtagWidget({Key? key}) : super(key: key);
  List<String> list = [
    'Tất cả',
    'Âm nhạc',
    'Thể dục',
    'Tin học',
    'Văn Phòng',
    'Sinh viên',
    'Văn phòng sinh viên ',
    'Học Sinh',
    'Lao động',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 10),
        height: 30,
        child: Row(
          children: [
            ...list.map((e) {
              return Container(

                // width: MediaQuery.of(context).size.width * .25,
                decoration: BoxDecoration(
                  color: Color(Random().nextInt(0xffffffff)),
                  borderRadius: BorderRadius.circular(30),
                ),
                margin: EdgeInsets.only(right: 15),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10 , right: 10),
                  child: Center(
                    child: Text(
                      e,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}
