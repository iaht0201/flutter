import 'package:flutter/material.dart';
import 'package:g5/model/lophocphan_model.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class LopHocPhanPage extends StatelessWidget {
  const LopHocPhanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: Icon(Icons.add, color: Colors.black),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...ls.map((e) {
                return Container(
                  margin: EdgeInsets.all(10),

                  child: Slidable(

                    endActionPane: ActionPane(
                      motion: StretchMotion(),
                      children: [
                        SlidableAction(
                          onPressed: ((context) {}),
                          icon: Icons.add,
                        ),
                        SlidableAction(
                          onPressed: ((context) {}),
                          icon: Icons.edit,
                          backgroundColor: Colors.green,
                          flex:2 ,
                        ),
                        SlidableAction(
                          onPressed: ((context) {}),
                          icon: Icons.delete ,
                          backgroundColor: Colors.red,

                        ),
                      ],
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(20),
                      // margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(e.hinhNen ?? ""),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e.tenLopHocPhan ?? "",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    e.maLopHoc ?? "",
                                    // style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Text(
                            "${e.soLuongNhanVien ?? 0} học viên",
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              })
            ],
          ),
        ));
  }
}
