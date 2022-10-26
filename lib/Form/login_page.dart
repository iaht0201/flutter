import 'package:flutter/material.dart';
import 'package:g5/Form/register_page.dart';
import 'package:g5/ig.dart';
import 'package:g5/product_page.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Form(
              key: formKey,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: const Image(
                        image: NetworkImage(
                            "https://www.thuvienvector.com/upload/images/items/vector-logo-evn-logo-tap-doan-dien-luc-viet-nam-file-cdr-coreldraw-ai-151.webp")),
                  ),
                  const Text(
                    "Đăng nhập hệ thống",
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return "Tên đăng nhập không được để trống";
                        else {
                          return null;
                        }
                      },
                      controller: usernameController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        hintText: "Vui lòng nhập tên đăng nhập",
                        label: Text("Tên đăng nhâp"),
                        prefixIcon: Icon(Icons.person),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return "Mật khẩu không được để trống";
                        else {
                          return null;
                        }
                      },
                      controller: passwordController,
                      decoration: const InputDecoration(
                        hintText: "Vui lòng nhập mật khẩu",
                        label: Text("Mật khẩu"),
                        prefixIcon: Icon(Icons.password),
                        // border: InputBorder.none
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // InkWell(
                      //   onTap: () {
                      //     if (formKey.currentState!.validate()) {
                      //       var userName = usernameController.text;
                      //       var snackBar = SnackBar(
                      //           content: Text("Xin chào, ${userName}"));
                      //       ScaffoldMessenger.of(context)
                      //           .showSnackBar(snackBar);
                      //     }
                      //   },
                      //   child: Container(
                      //     width: MediaQuery.of(context).size.width,
                      //     padding: EdgeInsets.all(30),
                      //     child: Text("Đăng nhập:",
                      //         style:
                      //             TextStyle(fontSize: 20, color: Colors.white)),
                      //     decoration: BoxDecoration(
                      //         color: Colors.deepOrange,
                      //         borderRadius: BorderRadius.circular(30)),
                      //   ),
                      // ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Register(),
                            ));
                          },
                          child: const Text(
                            "Đăng ký",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              var userName = usernameController.text;
                              var snackBar = SnackBar(
                                  content: Text("Xin chào, ${userName}"));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProductListPage(),
                              ));
                            }

                          },
                          child: const Text(
                            "Đăng nhập",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    ],
                  )
                ],
              )),
        ));
  }
}
