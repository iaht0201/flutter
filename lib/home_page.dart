import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12 ,
      appBar:  AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Hello App",
          style:TextStyle(
            color: Colors.orangeAccent ,
            fontSize: 30 ,

          ) ,
        ),
        leading: const Icon(
          Icons.menu,
          color: Colors.orange,
          size: 40,
        ),
      ), // Tieu de phia tren
      //Control shift R - visual or android alt enter
    body:  Center(
      child:  SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Hello World" ,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30 ,
              ),
            ),
            Text(
              "Hello to my class" ,
              style: TextStyle(
                color: Colors.red,
                fontSize: 30 ,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.star, color: Colors.orange,
                ) ,
                Icon(
                  Icons.star, color: Colors.orange,
                ) ,
                Icon(
                  Icons.star, color: Colors.orange,
                ) ,
                Icon(
                  Icons.star, color: Colors.orange,
                ) ,
                Icon(
                  Icons.star, color: Colors.grey,
                ) ,
                Text(
                  "60 rating",
                  style: TextStyle(
                    fontSize: 18 ,
                    fontWeight: FontWeight.bold ,
                    color : Colors.orange

                  ),
                )
              ],
            ) ,
            Image.network("https://images.unsplash.com/photo-1663326223701-ae6eb029d98d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80") ,
            Image.asset("assets/images/anh1.jpg") ,
            Image.network("https://images.unsplash.com/photo-1663326223701-ae6eb029d98d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80") ,
            Image.asset("assets/images/anh1.jpg") ,
          ],
        ),
      ),
    ),
    );
  }
}
