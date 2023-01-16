import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:funny_lenss/widgets/navigationbar.dart';
import 'package:funny_lenss/pages/bestseller.dart';
import 'package:funny_lenss/pages/mitstarke.dart';
import 'package:funny_lenss/pages/pflege.dart';
import 'package:funny_lenss/widgets/searchbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool renkBestSeller = false;
  bool renkMitStarke = false;
  bool renkPflege = false;
  bool home = false;
  bool stopen = false;
  bool waremkorb = false;
  bool merkiste = false;
  bool more = false;
  bool bildirim = false;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(extendBody: true,
          body: Stack(children: [
            SingleChildScrollView(
              child: Column(children: [
                const SearchBarCustom(),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: CarouselSlider(
                    items: [
                      //1st Image of Slider
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/hdpi/vampir-nemu-neko-halloween-slider.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      viewportFraction: 0.9,
                      height: 118,
                      enlargeCenterPage: true,
                      autoPlay: false,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              renkBestSeller = !renkBestSeller;
                            });
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const BestSeller()));
                            print("bestseller");
                          },
                          child: SizedBox(height: 130,
                            child: Image.asset(renkBestSeller ? "assets/images/hdpi/bestseller_blue.png" :"assets/images/hdpi/bestseller.png" ,

                            ),
                          )),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              renkMitStarke = !renkMitStarke;
                            });
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const MitStarke()));
                            print("mit starke");
                          },
                          child: SizedBox(height: 130,
                            child: Image.asset(renkMitStarke ? "assets/images/hdpi/mitstarke_blue.png" : "assets/images/hdpi/mitstarke.png",

                            ),
                          )),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              renkPflege = !renkPflege;
                            });
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Pflege()));
                            print("Plege");
                          },
                          child: SizedBox(height: 130,
                            child: Image.asset(renkPflege ? "assets/images/hdpi/pflege_blue.png" : "assets/images/hdpi/pflege.png",

                            ),
                          )),
                    ],
                  ),
                ),
                ExpansionTile(trailing: const Icon(Icons.arrow_drop_down_sharp),
                  collapsedIconColor: Colors.white,
                  iconColor: Colors.white,
                  backgroundColor: const Color.fromRGBO(27, 27, 47, 1),
                  textColor: Colors.white,
                  collapsedTextColor: Colors.white,
                  collapsedBackgroundColor: const Color.fromRGBO(7, 112, 170, 1),
                  title: const Text(
                    'Farbige Kontaktlinsen',
                    style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
                  ),
                  children: [
                    ListTile(
                      selectedTileColor: const Color.fromRGBO(27, 27, 47, 1),
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
                      backgroundColor: Colors.white,
                      collapsedTextColor: const Color.fromRGBO(49, 51, 51, 1),
                      collapsedBackgroundColor: Colors.white,
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
                Stack(
                  children: [
                    Image.asset("assets/images/hdpi/blue.png"),
                    Padding(
                      padding: const EdgeInsets.only(top: 115.0),
                      child: Column(children: [
                        Stack(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 60.0, left: 20),
                              child: Align(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Text(
                                    "Probleme mit Lieferung?",
                                    style: TextStyle(
                                        fontSize: 23,
                                        color: Color.fromRGBO(120, 49, 53, 1)),
                                  )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 90.0, left: 20),
                              child: Align(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(49, 49, 49, 1)),
                                  )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 290),
                              child: Text(
                                "08122 5850070",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromRGBO(120, 49, 53, 1)),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 330),
                              child: Text(
                                "Mo-Fr.08:30-17:00 Uhr",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(49, 49, 49, 1)),
                              ),
                            ),
                            Image.asset("assets/images/hdpi/bordo.png",),
                          ],
                        )
                      ]),
                    ),
                  ],
                )
              ]),
            ),
          ]),
          bottomNavigationBar: const NavigationBarCustom(),

        ),
        );
  }
}
