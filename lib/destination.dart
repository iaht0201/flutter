import 'package:flutter/material.dart';
import 'package:g5/hagtag_widget.dart';
import 'package:g5/slider_widget.dart';

class HUSCPAGE extends StatelessWidget {
  const HUSCPAGE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("HUSC - ĐẠI HỌC KHOA HỌC HUẾ"),
        leading: const Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // blockImage(context) ,
            SliderWidget() ,
            HagtagWidget() ,
            blockTitle(context),
            blockButton(context),
            blockDecription(context),
          ],
        ),
      ),
    );
  }

  blockTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            textBaseline: TextBaseline.alphabetic,
            children: const [
              Text(
                "Trường đại học khoa học Huế",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.brown,

                ),
              ),
              Text(
                "77 Nguyễn Huệ, Tỉnh Thừa Thiên Huế",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.orangeAccent,
                  ),
                  Text("50"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  button(String title, IconData iconData) {
    return Column(
      children: [
        Icon(
          iconData,
          color: Colors.brown,
          size: 35,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.brown,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

//
//   blockImage(BuildContext context) {
//     return Image.network("https://images.unsplash.com/photo-1663326223701-ae6eb029d98d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80") ;
// }
  blockImage(BuildContext context) {
    return Image.asset("/images/anh12.jpg");
  }

  blockButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        button("Call", Icons.phone),
        button("Route", Icons.near_me),
        button("Share", Icons.share),
      ],
    );
  }

  blockDecription(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.40),
      child: Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
