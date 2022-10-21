import 'package:flutter/material.dart';
class DestinationPage extends StatelessWidget {
  const DestinationPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
         child: Column(

           children: [
             Image.network("https://images.unsplash.com/photo-1663326223701-ae6eb029d98d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
             SizedBox(height: 20),
             Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 300 ,
                      child: Column(
                        children: [
                          Text("Đại Học Khoa Học Huế",
                            style: TextStyle(
                              color: Colors.brown ,
                              fontSize: 20 ,
                              fontWeight: FontWeight.bold ,
                            ),
                          ),
                          Text("Trường Đại học Khoa học, Đại học Huế. 77 Nguyễn Huệ, Thành phố Huế, Tỉnh Thừa Thiên Huế,",
                            style: TextStyle(
                              color: Colors.brown ,
                              fontSize: 16 ,
                              fontWeight: FontWeight.normal ,

                            ),
                          ),
                        ],
                      ),
                    ) ,
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star , color: Colors.brown) , 
                            Text("11",)
                          ],
                        )
                      ],
                    )
                  ],
                )
           ],
         ),
       ),

    );
  }
}
