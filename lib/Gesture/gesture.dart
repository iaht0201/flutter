// import 'package:flutter/material.dart';
//
// class Getsture extends StatelessWidget {
//   const Getsture({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("OK"),
//       ),
//       body: Center(
//         child: GestureDetector(
//           onTap: () {
//             _showDialog(context);
//           },
//         ),
//       ),
//     );
//   }
// }
//
// void _showDialog(BuildContext context) {
//   // user defined function void _showDialog(BuildContext context) {
//   // flutter defined function
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       // return object of type Dialog
//       return AlertDialog(
//         title: new Text("Message"),
//         content: new Text("Hello World"),
//         actions: <Widget>[
//            new  FlatButton(
//             child: new Text("Close"),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//         ],
//       );
//     },
//   );
// }
