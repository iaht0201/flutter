import 'package:flutter/material.dart';
import 'package:g5/Form/login_page.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
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
                    "Đăng ký hệ thống",
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
                          hintText: "Vui lòng nhập tên đăng nhập",
                          label: Text("Tên đăng nhâp"),
                          prefixIcon: Icon(Icons.person))),
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
                          prefixIcon: Icon(Icons.password))),
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
                          prefixIcon: Icon(Icons.password))),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Đăng ký")),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                          },
                          child: const Text("Đăng nhập")),
                    ],
                  )
                ],
              )),
        ));
  }
}
