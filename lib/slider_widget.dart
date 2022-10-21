import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  SliderWidget({Key? key}) : super(key: key);
  List<String> list = [
    'assets/images/anh12.jpg',
    'assets/images/photo1.jpg',
    'assets/images/cover3.jpg',
    'assets/images/anh12.jpg',
    'assets/images/photo1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 200,
        child: Row(
          children: [
            // Image.asset(list[0])

            ...list.map((e) {
              return Container(
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(right: 10),
                width: MediaQuery.of(context).size.width *
                    .9, // get do cao cua man hinh
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(e),
                      fit: BoxFit.contain,
                    ),
                    borderRadius: BorderRadius.circular(38)),
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}
