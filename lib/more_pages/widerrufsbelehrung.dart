import 'package:flutter/material.dart';
import 'package:funny_lenss/widgets/navigationbar.dart';
import 'package:funny_lenss/widgets/searchbar.dart';

class Widerrufsbelehrung extends StatefulWidget {
  const Widerrufsbelehrung({Key? key}) : super(key: key);

  @override
  State<Widerrufsbelehrung> createState() => _WiderrufsbelehrungState();
}

class _WiderrufsbelehrungState extends State<Widerrufsbelehrung> {
  @override
  Widget build(BuildContext context) {
    Color navib = const Color.fromRGBO(6, 96, 158, 1);
    return SafeArea(child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            const SearchBarCustom(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text("Widerrufsbelehrung",
                    style: TextStyle(color: navib, fontSize: 18),),
                ],
              ),
            ),

          ]),
        ),
        bottomNavigationBar: const NavigationBarCustom()
    ),
    );
  }
}
