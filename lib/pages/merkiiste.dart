import 'package:flutter/material.dart';
import 'package:funny_lenss/pages/product_details.dart';
import 'package:funny_lenss/widgets/navigationbar.dart';
import 'package:funny_lenss/widgets/searchbar.dart';

class Merkiiste extends StatefulWidget {
  const Merkiiste({Key? key}) : super(key: key);

  @override
  State<Merkiiste> createState() => _MerkiisteState();
}

class _MerkiisteState extends State<Merkiiste> {
  bool bildirim = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SearchBarCustom(),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: const [
                    Text(
                      "Merkiiste",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              //   child: Row(
              //     children: [
              //       const Siralama(),
              //       const Spacer(),
              //       GestureDetector(onTap: (){
              //         setState(() {
              //           kategori = !kategori;
              //           print("filtre");
              //         });
              //       },
              //         child: Image.asset(
              //           "assets/images/siralama/filternbut.png",
              //           width: 135,
              //           height: 42,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              Stack(
                  children:[
                    GridView.count(
                      physics: const ScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      childAspectRatio: 17/18,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      crossAxisCount: 2,
                      children: <Widget>[
                        GestureDetector(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails()));
                        },
                          child: Stack(
                            children: [
                              Image.asset(
                                "assets/images/eye/blue.png",
                              ),
                              Image.asset("assets/images/hdpi/neu.png"),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 155, left: 10),
                                    child: Column(children: const [
                                      Text(
                                        "Alper",
                                        style: TextStyle(
                                            fontSize: 13, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "17.90 €",
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 155.0, left: 70),
                                    child: Image.asset(
                                      "assets/images/hdpi/case.png",
                                      height: 22.61,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/eye/green.png",
                            ),
                            Image.asset("assets/images/hdpi/neu.png"),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 155, left: 10),
                                  child: Column(children: const [
                                    Text(
                                      "Green",
                                      style: TextStyle(
                                          fontSize: 13, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "17.90 €",
                                      style: TextStyle(fontSize: 9),
                                    ),
                                  ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 155.0, left: 70),
                                  child: Image.asset(
                                    "assets/images/hdpi/case.png",
                                    height: 22.61,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/eye/white.png",
                            ),
                            Image.asset("assets/images/hdpi/neu.png"),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 155, left: 10),
                                  child: Column(children: const [
                                    Text(
                                      "Alper",
                                      style: TextStyle(
                                          fontSize: 13, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "17.90 €",
                                      style: TextStyle(fontSize: 9),
                                    ),
                                  ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 155.0, left: 70),
                                  child: Image.asset(
                                    "assets/images/hdpi/case.png",
                                    height: 22.61,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/eye/whiteblack.png",
                            ),
                            Image.asset("assets/images/hdpi/neu.png"),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 155, left: 10),
                                  child: Column(children: const [
                                    Text(
                                      "Green",
                                      style: TextStyle(
                                          fontSize: 13, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "17.90 €",
                                      style: TextStyle(fontSize: 9),
                                    ),
                                  ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 155.0, left: 70),
                                  child: Image.asset(
                                    "assets/images/hdpi/case.png",
                                    height: 22.61,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),

                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/eye/blood.png",
                            ),
                            Image.asset("assets/images/hdpi/neu.png"),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 155, left: 10),
                                  child: Column(children: const [
                                    Text(
                                      "Alper",
                                      style: TextStyle(
                                          fontSize: 13, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "17.90 €",
                                      style: TextStyle(fontSize: 9),
                                    ),
                                  ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 155.0, left: 70),
                                  child: Image.asset(
                                    "assets/images/hdpi/case.png",
                                    height: 22.61,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/eye/cizgi.png",
                            ),
                            Image.asset("assets/images/hdpi/neu.png"),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 155, left: 10),
                                  child: Column(children: const [
                                    Text(
                                      "Green",
                                      style: TextStyle(
                                          fontSize: 13, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "17.90 €",
                                      style: TextStyle(fontSize: 9),
                                    ),
                                  ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 155.0, left: 70),
                                  child: Image.asset(
                                    "assets/images/hdpi/case.png",
                                    height: 22.61,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),

                  ]
              )

            ],
          ),
        ),
        bottomNavigationBar: const NavigationBarCustom(),
      ),
    );
  }
}
