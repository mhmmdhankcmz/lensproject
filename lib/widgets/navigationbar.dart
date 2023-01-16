
import 'package:flutter/material.dart';
import 'package:funny_lenss/homepage.dart';
import 'package:funny_lenss/pages/merkiiste.dart';
import 'package:funny_lenss/pages/basket.dart';
import 'package:funny_lenss/pages/more.dart';
import 'package:funny_lenss/profil/profil_page.dart';

import '../pages/empty_basket.dart';

class NavigationBarCustom extends StatefulWidget {
  const NavigationBarCustom({Key? key}) : super(key: key);

  @override
  State<NavigationBarCustom> createState() => _NavigationBarCustomState();
}

class _NavigationBarCustomState extends State<NavigationBarCustom> {
  bool home = false;
  bool stopen = false;
  bool waremkorb = false;
  bool merkiste = false;
  bool more = false;
  bool profil = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(6, 96, 158, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                home = !home;
              });
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            icon: home
                ? Image.asset(
                    "assets/images/bottombar/homewhite.png",
                  )
                : Image.asset(
                    "assets/images/bottombar/homegray.png",
                  ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                stopen = !stopen;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const EmptyBasket()));
              });
            },
            icon: stopen
                ? Image.asset(
                    "assets/images/bottombar/stopenwhite.png",
                  )
                : Image.asset(
                    "assets/images/bottombar/stopen.png",
                  ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                waremkorb = !waremkorb;
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Sepet()));
              });
            },
            icon: waremkorb
                ? Image.asset(
                    "assets/images/bottombar/warenkorbwhite.png",
                  )
                : Image.asset(
                    "assets/images/bottombar/warenkorb.png",
                  ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                merkiste = !merkiste;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Merkiiste()));
              });
            },
            icon: merkiste
                ? Image.asset(
                    "assets/images/bottombar/merkistewhite.png",
                  )
                : Image.asset(
                    "assets/images/bottombar/merkiste.png",
                  ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const More()));
                more = !more;
              });
            },
            icon: more
                ? Image.asset(
                    "assets/images/bottombar/morewhite.png",
                  )
                : Image.asset(
                    "assets/images/bottombar/more.png",
                  ),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  profil = !profil;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ProfilePage()));
                });
              },
              icon: profil
                  ? Stack(children: const [
                      Icon(Icons.person,
                          size: 22.61, color: Color.fromRGBO(129, 176, 209, 1)),
                      Padding(
                        padding: EdgeInsets.only(left: 3, top: 22.0),
                        child: Text(
                          "Profil",
                          style: TextStyle(
                              fontSize: 7,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(129, 176, 209, 1)),
                        ),
                      )
                    ])
                  : Stack(children: const [
                      Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 22.61,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3, top: 22.0),
                        child: Text(
                          "Profil",
                          style: TextStyle(
                              fontSize: 7,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )
                    ])),

        ],
      ),
    );
  }
}
