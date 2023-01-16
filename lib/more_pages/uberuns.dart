import 'package:flutter/material.dart';
import 'package:funny_lenss/widgets/navigationbar.dart';
import 'package:funny_lenss/widgets/searchbar.dart';

class UberUns extends StatefulWidget {
  const UberUns({Key? key}) : super(key: key);

  @override
  State<UberUns> createState() => _UberUnsState();
}

class _UberUnsState extends State<UberUns> {
  Widget build(BuildContext context) {
    Color navib = Color.fromRGBO(6, 96, 158, 1);
    return SafeArea(child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            const SearchBarCustom(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text("Über uns",style: TextStyle(color: navib,fontSize: 18),),
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
