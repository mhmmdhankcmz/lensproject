import 'package:flutter/material.dart';
import 'package:funny_lenss/more_pages/agb.dart';
import 'package:funny_lenss/more_pages/impressum.dart';
import 'package:funny_lenss/more_pages/uberuns.dart';
import 'package:funny_lenss/more_pages/versandarten.dart';
import 'package:funny_lenss/more_pages/widerrufsbelehrung.dart';
import 'package:funny_lenss/more_pages/zahlungsarten.dart';
import 'package:funny_lenss/pages/login-page.dart';
import 'package:funny_lenss/pages/register.dart';
import 'package:funny_lenss/widgets/navigationbar.dart';
import 'package:funny_lenss/widgets/searchbar.dart';

import '../more_pages/datenschutz.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
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
                  Text("Wilkommen",
                    style: TextStyle(color: navib, fontSize: 18),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const Divider(indent: 1,),
                Row(children: [
                  SizedBox(width: 150,child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: navib),onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
                  }, child: const Text("Anmeldung",style: TextStyle(fontWeight: FontWeight.bold),))),
                  const Spacer(),
                  SizedBox(width: 150,child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(137, 58, 63, 1)),onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegisterPage()));
                  }, child: const Text("Registrieren",style: TextStyle(fontWeight: FontWeight.bold)))),
                ],),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const UberUns()));
                  }, child: const Text("Über uns",style: TextStyle(fontSize: 11),)),
                ),
                const Divider(indent: 1,),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Versandarten()));
                    }, child: const Text("Versandarten",style: TextStyle(fontSize: 11),)),
                  ),
                  const Divider(indent: 1,),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Zahlungsarten()));
                    }, child: const Text("Zahlungsarten",style: TextStyle(fontSize: 11),)),
                  ),
                  const Divider(indent: 1,),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const AGB()));
                    }, child: const Text("AGB",style: TextStyle(fontSize: 11),)),
                  ),
                  const Divider(indent: 1,),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Datenschutz()));
                    }, child: const Text("Datenschutz",style: TextStyle(fontSize: 11),)),
                  ),
                  const Divider(indent: 1,),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Widerrufsbelehrung()));
                    }, child: const Text("Widerrufsbelehrung",style: TextStyle(fontSize: 11),)),
                  ),
                  const Divider(indent: 1,),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Impressum()));
                    }, child: const Text("Impressum",style: TextStyle(fontSize: 11),)),
                  ),
                  const Divider(indent: 1,),
              ],
              ),
            ),
            const Text("App Version: 10.74.0\n  Lib Version:25.0",style: TextStyle(color: Colors.black26,fontSize: 8),),
          ]),
        ),
        bottomNavigationBar: const NavigationBarCustom()
    ),
    );
  }
}
