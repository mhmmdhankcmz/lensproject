import 'package:flutter/material.dart';
import 'package:funny_lenss/widgets/navigationbar.dart';
import 'package:funny_lenss/widgets/searchbar.dart';
import 'package:funny_lenss/widgets/siralama.dart';

class MitStarke extends StatefulWidget {
  const MitStarke({Key? key}) : super(key: key);

  @override
  State<MitStarke> createState() => _MitStarkeState();
}

class _MitStarkeState extends State<MitStarke> {

  bool kategori = false;
  bool bildirim = false;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SearchBarCustom(),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left:16.0),
                      child: Text("Mit Stärke",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Row(
                    children: [
                      const Siralama(),
                      const Spacer(),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            kategori = !kategori;
                            print("filtre");
                          });
                        },
                        child: Image.asset(
                          "assets/images/siralama/filternbut.png",
                          width: 135,
                          height: 42,
                        ),
                      )
                    ],
                  ),
                ),
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
                          Stack(
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
                          Stack(
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
                      Visibility(visible: kategori,
                        child: Column(
                          children: [
                            ExpansionTile(
                              trailing: const Icon(Icons.arrow_drop_down_sharp),
                              collapsedIconColor: const Color.fromRGBO(6, 96, 158, 1),
                              iconColor: const Color.fromRGBO(6, 96, 158, 1),
                              backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
                              textColor: const Color.fromRGBO(6, 96, 158, 1),
                              collapsedTextColor: const Color.fromRGBO(6, 96, 158, 1),
                              collapsedBackgroundColor: Colors.white,
                              title: const Text(
                                'Kategorien',
                                style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
                              ),
                              children: [
                                ExpansionTile(trailing: const Icon(Icons.arrow_drop_down_sharp),
                                  collapsedIconColor: Colors.white,
                                  iconColor: Colors.white,
                                  backgroundColor: const Color.fromRGBO(27, 27, 47, 1),
                                  textColor: Colors.white,
                                  collapsedTextColor: Colors.white,
                                  collapsedBackgroundColor:const Color.fromRGBO(7,112,170,1),
                                  title: const Text(
                                    'Farbige Kontaktlinsen',
                                    style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
                                  ),
                                  children: [
                                    ListTile(
                                      selectedTileColor: const Color.fromRGBO(27, 27, 47, 1),
                                      tileColor:const Color.fromRGBO(27, 27, 47, 1) ,
                                      selectedColor: const Color.fromRGBO(27, 27, 47, 1),
                                      textColor: Colors.white,
                                      title: const Text('Blaue Kontaktlinsen',
                                        style: TextStyle(fontSize: 17,),),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      textColor: Colors.white,
                                      title: const Text('Grüne Kontaktlinsen',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      textColor: Colors.white,
                                      title: const Text('Braune Kontaktlinsen',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      textColor: Colors.white,
                                      title: const Text('Braune Kontaktlinsen',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                                ExpansionTile(trailing: const Icon(Icons.arrow_drop_down_sharp),
                                  collapsedIconColor: Colors.white,
                                  iconColor: Colors.white,
                                  backgroundColor: const Color.fromRGBO(27, 27, 47, 1),
                                  textColor: Colors.white,
                                  collapsedTextColor: Colors.white,
                                  collapsedBackgroundColor: const Color.fromRGBO(8, 69, 123, 1),
                                  title: const Text('Fun Kontaktlinsen',
                                      style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold)),
                                  children: [
                                    ListTile(
                                      tileColor: const Color.fromARGB(19, 19, 36, 100),
                                      textColor: Colors.white,
                                      title: const Text('Motiv Kontaktlinsen',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      textColor: Colors.white,
                                      title: const Text('Sharingan Kontaktlinsen',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      textColor: Colors.white,
                                      title: const Text('Sclera Kontaktlinsen',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      textColor: Colors.white,
                                      title: const Text('UV Kontaktlinsen',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                                ExpansionTile(trailing: const Icon(Icons.arrow_drop_down_sharp),
                                  collapsedIconColor: Colors.white,
                                  iconColor: Colors.white,
                                  backgroundColor: const Color.fromRGBO(27, 27, 47, 1),
                                  textColor: Colors.white,
                                  collapsedTextColor: Colors.white,
                                  collapsedBackgroundColor: const Color.fromRGBO(137, 58, 63, 1),
                                  title: const Text('Plüschtiere', style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold)),
                                  children: [
                                    ListTile(
                                      tileColor: const Color.fromARGB(19, 19, 36, 100),
                                      textColor: Colors.white,
                                      title:
                                      const Text('Nemu Neko', style: TextStyle(fontSize: 17)),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      textColor: Colors.white,
                                      title: const Text('Pokemon', style: TextStyle(fontSize: 17)),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      textColor: Colors.white,
                                      title: const Text('Sumikko Gurashi',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      textColor: Colors.white,
                                      title: const Text('Andere Plüschtiere',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                                ExpansionTile(trailing: const Icon(Icons.arrow_drop_down_sharp),
                                  collapsedIconColor: Colors.white,
                                  iconColor: Colors.white,
                                  backgroundColor: const Color.fromRGBO(27, 27, 47, 1),
                                  textColor: Colors.white,
                                  collapsedTextColor: Colors.white,
                                  collapsedBackgroundColor: const Color.fromRGBO(146, 146, 146, 1),
                                  title: const Text('Zubehör', style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold)),
                                  children: [
                                    ListTile(
                                      tileColor: const Color.fromARGB(19, 19, 36, 100),
                                      textColor: Colors.white,
                                      title: const Text('Kontaktlinsenflüssigkeit',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      textColor: Colors.white,
                                      title: const Text('Kontaktlinsenbehälter',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {},
                                    ),
                                    ExpansionTile(trailing: const SizedBox(),
                                      backgroundColor: const Color.fromRGBO(204, 229, 246, 1),
                                      textColor:  const Color.fromRGBO(49, 51, 51, 1),
                                      collapsedTextColor: const Color.fromRGBO(49, 51, 51, 1),
                                      collapsedBackgroundColor:const Color.fromRGBO(204, 229, 246, 1),
                                      title: const Text('Halloween Artikel',
                                          style: TextStyle(fontSize: 17)),
                                      children: [
                                        ListTile(
                                          title: const Text('Halloween Kontaktiinsen',
                                              style: TextStyle(fontSize: 17)),
                                          onTap: () {},
                                        ),
                                        ListTile(
                                          title: const Text('Anime/Cosplay Kontaktlinsen',
                                              style: TextStyle(fontSize: 17)),
                                          onTap: () {},
                                        ),
                                        ListTile(
                                          title: const Text('% Sale % Ausverkauf',
                                              style: TextStyle(fontSize: 17)),
                                          onTap: () {},
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Visibility(visible: kategori,
                              child: ExpansionTile(
                                trailing:  const Icon(Icons.arrow_drop_down_sharp),
                                collapsedIconColor: const Color.fromRGBO(6, 96, 158, 1),
                                iconColor: const Color.fromRGBO(6, 96, 158, 1),
                                backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
                                textColor: const Color.fromRGBO(6, 96, 158, 1),
                                collapsedTextColor: const Color.fromRGBO(6, 96, 158, 1),
                                collapsedBackgroundColor: Colors.white,
                                title: const Text("Farbe",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                                children: [
                                  ListTile(
                                    title: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(width: 27, height: 27, color: Colors.red,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(width: 27, height: 27, color: Colors.white,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(width: 27, height: 27, color: Colors.black,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(width: 27, height: 27, color: const Color.fromRGBO(7, 126, 230, 1)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(width: 27, height: 27, color: const Color.fromRGBO(12, 230, 0, 1)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(width: 27, height: 27, color: const Color.fromRGBO(128, 85, 0, 1)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(width: 27, height: 27, color: const Color.fromRGBO(255, 255, 3, 1)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(width: 27, height: 27, color: const Color.fromRGBO(163, 163, 163, 1)),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Visibility(visible: kategori,
                              child: const ExpansionTile(
                                trailing:  Icon(Icons.arrow_drop_down_sharp),
                                collapsedIconColor: Color.fromRGBO(6, 96, 158, 1),
                                iconColor: Color.fromRGBO(6, 96, 158, 1),
                                backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
                                textColor: Color.fromRGBO(6, 96, 158, 1),
                                collapsedTextColor: Color.fromRGBO(6, 96, 158, 1),
                                collapsedBackgroundColor: Colors.white,
                                title: Text("Durchmesser",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                                children: [
                                  ListTile(
                                      title: Text("14.00 mm (25)",style: TextStyle(fontSize: 11),)
                                  ),
                                ],
                              ),
                            ),
                            Visibility(visible: kategori,
                              child: const ExpansionTile(
                                trailing: Icon(Icons.arrow_drop_down_sharp),
                                collapsedIconColor: Color.fromRGBO(6, 96, 158, 1),
                                iconColor: Color.fromRGBO(6, 96, 158, 1),
                                backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
                                textColor: Color.fromRGBO(6, 96, 158, 1),
                                collapsedTextColor: Color.fromRGBO(6, 96, 158, 1),
                                collapsedBackgroundColor: Colors.white,
                                title: Text("Stärke",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                                children: [
                                  ListTile(
                                      title: Text("Ohne Stärke",style: TextStyle(fontSize: 11),)
                                  ),
                                  ListTile(
                                      title: Text("-0.75 (9)",style: TextStyle(fontSize: 11),)
                                  ),
                                  ListTile(
                                      title: Text("-1.00 (23)",style: TextStyle(fontSize: 11),)
                                  ),
                                  ListTile(
                                      title: Text("-1.25 (8)",style: TextStyle(fontSize: 11),)
                                  ),
                                  ListTile(
                                      title: Text("-1.50 (19)",style: TextStyle(fontSize: 11),)
                                  ),
                                  ListTile(
                                      title: Text("-1.75 (9)",style: TextStyle(fontSize: 11),)
                                  ),
                                  ListTile(
                                    title: Text("-2.00 (9)",style: TextStyle(fontSize: 11),),
                                  )
                                ],
                              ),
                            ),
                            Visibility(visible: kategori,
                              child: const ExpansionTile(
                                trailing: Icon(Icons.arrow_drop_down_sharp),
                                collapsedIconColor: Color.fromRGBO(6, 96, 158, 1),
                                iconColor: Color.fromRGBO(6, 96, 158, 1),
                                backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
                                textColor: Color.fromRGBO(6, 96, 158, 1),
                                collapsedTextColor: Color.fromRGBO(6, 96, 158, 1),
                                collapsedBackgroundColor: Colors.white,
                                title: Text("Serie",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                                children: [
                                  ListTile(
                                      title: Text("Jasmine (4)",style: TextStyle(fontSize: 11),)
                                  ),
                                  ListTile(
                                      title: Text("Mirel (8)",style: TextStyle(fontSize: 11),)
                                  ),
                                  ListTile(
                                      title: Text("Rose (4)",style: TextStyle(fontSize: 11),)
                                  ),
                                ],
                              ),
                            ),
                            Visibility(visible: kategori,
                              child: const ExpansionTile(
                                trailing: Icon(Icons.arrow_drop_down_sharp),
                                collapsedIconColor: Color.fromRGBO(6, 96, 158, 1),
                                iconColor: Color.fromRGBO(6, 96, 158, 1),
                                backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
                                textColor: Color.fromRGBO(6, 96, 158, 1),
                                collapsedTextColor: Color.fromRGBO(6, 96, 158, 1),
                                collapsedBackgroundColor: Colors.white,
                                title: Text("Jahr",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                                children: [
                                  ListTile(
                                      title: Text("Kontaktlinsen 2020 (1)",style: TextStyle(fontSize: 11),)
                                  ),
                                  ListTile(
                                      title: Text("Kontaktlinsen 2018 (17)",style: TextStyle(fontSize: 11),)
                                  ),
                                  ListTile(
                                      title: Text("Kontaktlinsen 2017 und früher (3)",style: TextStyle(fontSize: 11),)
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]
                )
              ],
            ),
          )
        ]
      ),
        bottomNavigationBar: const NavigationBarCustom(),
    ),
    );
  }
}
