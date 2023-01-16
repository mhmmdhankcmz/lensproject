import 'package:flutter/material.dart';
import 'package:funny_lenss/widgets/navigationbar.dart';
import 'package:funny_lenss/widgets/searchbar.dart';

class MoneyOrder extends StatefulWidget {
  const MoneyOrder({Key? key}) : super(key: key);

  @override
  State<MoneyOrder> createState() => _MoneyOrderState();
}

class _MoneyOrderState extends State<MoneyOrder> {
  Color navib =const Color.fromRGBO(6, 96, 158, 1);
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchBarCustom(),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children:  [
                  Text(
                    "Vielen Dank für Ihren Einkauf!",
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: navib),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const Divider(thickness: 1,color: Colors.black45,height: 20,),
                  const Text("Ihre Bestellnummer ist: 000014831.\n \nWir schicken Ihnen per E-Mail eine Bestellbestätigung mit Details und Informationen zur Sendeverfolgung."),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: SizedBox(width:double.maxFinite,height: 60,
                        child: ElevatedButton(onPressed: (){}, child: const Text("Mit dem Einkaufen fortfahen",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),))),
                  ),//
                  const Text("Sie können Ihren Bestellstatus verfolgen, wenn Sie ein  Konto erstellen. \n \nE-Mail-Adresse: sadich@deuzhtfab.com"),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50.0),
                    child: SizedBox(width:double.maxFinite,height: 60,
                        child: ElevatedButton(onPressed: (){}, child: const Text("Ein Konto erstellen",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),))),
                  ),// üyelik sayfana gidiş
                ],
              ),
            )

          ],
        ),
      ),
      bottomNavigationBar:const NavigationBarCustom() ,
    ));
  }
}
