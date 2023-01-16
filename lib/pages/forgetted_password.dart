import 'package:flutter/material.dart';
import 'package:funny_lenss/widgets/navigationbar.dart';
import 'package:funny_lenss/widgets/searchbar.dart';

class ForgettedPassword extends StatefulWidget {
  const ForgettedPassword({Key? key}) : super(key: key);

  @override
  State<ForgettedPassword> createState() => _ForgettedPasswordState();
}

class _ForgettedPasswordState extends State<ForgettedPassword> {
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
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                  Row(
                    children: const [
                      Text("Passwort vergessen", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Color.fromRGBO(6, 96, 158, 1)),),
                    ],
                  ),
                  const Text("Bitte geben Sie unten Ihre E-Mail-Adresse ein, um einen Link für die Zurücksetzung des Passworts zu erhalten.",overflow: TextOverflow.clip,),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Email*",suffixIcon: Icon(Icons.alternate_email))),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),labelStyle: TextStyle(fontSize: 12),labelText: "Bitte geben Sie die folgenden Buchstaben und Zahlen ein*",)),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: [
                          Image.asset("assets/images/hdpi/as.png"),
                          const Spacer(),
                          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.black12), child: const Text("Captcha neu laden"),),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor:const Color.fromRGBO(6, 96, 158, 1)), child: const Text("Mein Passwort zurücksetzen",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                    ),




                ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: const NavigationBarCustom(),
      ),
    );
  }

}

