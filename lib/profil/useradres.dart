import 'package:flutter/material.dart';
import 'package:funny_lenss/widgets/navigationbar.dart';
import 'package:funny_lenss/widgets/searchbar.dart';

class UserAdres extends StatefulWidget {
  const UserAdres({Key? key}) : super(key: key);

  @override
  State<UserAdres> createState() => _UserAdresState();
}

class _UserAdresState extends State<UserAdres> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SearchBarCustom(),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: const [
                    Text("Persönliche Informationen", style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Color.fromRGBO(6, 96, 158, 1)),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Divider(indent: 1,color: Colors.black26,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Adresse*",)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Stadt* *",)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Bundesland/Provinz*",)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Postleitzahl*",)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Land*",)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ElevatedButton(onPressed: (){

                      }, child: const Text("Aktualisieren")),
                    ),
                  ],),
              )
            ],
          ),
        ),
        bottomNavigationBar: const NavigationBarCustom(),
      ),
    );
  }
}
