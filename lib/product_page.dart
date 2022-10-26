import 'package:flutter/material.dart';
import 'package:g5/Shop/category_hagtag.dart';
import 'package:g5/model/product_model.dart';
import 'package:g5/provider/product_provider.dart';
import 'package:provider/provider.dart';
import 'package:g5/hagtag_widget.dart';
import 'package:g5/Shop/homeappbar.dart';

class ProductListPage extends StatelessWidget {
  ProductListPage({Key? key}) : super(key: key);
  List<ProductModel> list = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ProductProvider>(context);
    provider.getProduct();

    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            HomeAppBar(),
            TextFormField(),
            CategoryHagTag(),
            Container(
                height: 500,
                padding: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                    color: Color(0xFFE5E5E9),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 550,
                          margin: const EdgeInsets.only(
                              top: 20, left: 14, right: 14, bottom: 50),
                          child: GridView.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 1 / 1.72,

                            // scrollDirection: Axis.vertical,
                            children: [
                              // ...list.map((item) {
                              //   return Text(item.title ?? "") ;
                              // }).toList
                              ...provider.list.map((item) {
                                return Container(
                                  padding: const EdgeInsets.only(
                                      top: 17, left: 12, right: 12, bottom: 12),
                                  width: MediaQuery.of(context).size.width * 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 2.0,
                                        offset: Offset(
                                          5.0, // horizontal, move right 10
                                          5.0, // vertical, move down 10
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: Column(children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          100,
                                      height: 120,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  '${item.image}'))),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${item.title}',
                                          overflow: TextOverflow.clip,
                                          maxLines: 2,
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          ' \$${item.price} ',
                                          style: const TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              // padding: EdgeInsets.all(10),
                                              padding: const EdgeInsets.only(
                                                  right: 10,
                                                  left: 10,
                                                  top: 6,
                                                  bottom: 6),

                                              decoration: BoxDecoration(
                                                  color: Colors.redAccent,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Text(
                                                      '${item.rating?.rate}',
                                                      style: const TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    const SizedBox(
                                                      width: 3,
                                                    ),
                                                    const Icon(
                                                      Icons.star,
                                                      color: Colors.white,
                                                      size: 18,
                                                    ),
                                                  ]),
                                            ),
                                            Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                    color: Colors.redAccent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: const [
                                                    Icon(
                                                      Icons.add_shopping_cart,
                                                      size: 18,
                                                      color: Colors.white,
                                                    ),
                                                  ],
                                                ))
                                          ],
                                        )
                                      ],
                                    )
                                  ]),
                                );
                              }).toList()
                            ],
                          )),
                    ],
                  ),
                )),
          ],
        ));
  }
}
