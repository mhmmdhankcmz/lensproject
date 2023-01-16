import 'package:flutter/material.dart';
import 'package:funny_lenss/widgets/navigationbar.dart';
import 'package:funny_lenss/widgets/searchbar.dart';

class PassChange extends StatefulWidget {
  const PassChange({Key? key}) : super(key: key);

  @override
  State<PassChange> createState() => _PassChangeState();
}

class _PassChangeState extends State<PassChange> {
  bool hide = false;
  bool hidePass = false;

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
                    Text("Passwortänderung", style:
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
                padding:  const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
                child: Column(
                  children: [
                    Padding(
                      padding:  const EdgeInsets.all(5.0),
                      child: TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Email*",suffixIcon: Icon(Icons.alternate_email))),
                    ),
                    Padding(
                      padding:  const EdgeInsets.all(5.0),
                      child: TextFormField(obscureText: hide,decoration: InputDecoration(border: const OutlineInputBorder(),labelText: "Passwort*",suffixIcon: IconButton(onPressed: (){setState(() {
                        hide = !hide;
                      });}, icon: hide ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility)))),
                    ),
                    Padding(
                      padding:  const EdgeInsets.all(5.0),
                      child: TextFormField(obscureText: hidePass,decoration: InputDecoration(border: const OutlineInputBorder(),labelText: "Passwort bestätigen *",
                          suffixIcon: IconButton(onPressed: (){setState(() {
                        hidePass = !hidePass;
                      });}, icon: hidePass ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(width:120,child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Chaptcha"),)),
                          Spacer(),
                          Image.asset("assets/images/hdpi/chaptcha.png")
                        ],
                      ),
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
