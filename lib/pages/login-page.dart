import 'package:flutter/material.dart';
import 'package:funny_lenss/pages/forgetted_password.dart';
import 'package:funny_lenss/pages/register.dart';
import 'package:funny_lenss/widgets/navigationbar.dart';
import 'package:funny_lenss/widgets/searchbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hide = false;

  bool bildirim = false;


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
                    Text(
                      "Loginseite",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Color.fromRGBO(6, 96, 158, 1)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10,bottom: 80),
                child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Divider(height: 2, color: Colors.black38,),
                    const Text("Kundenlogin",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Color.fromRGBO(6, 96, 158, 1))),
                    ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(255, 153, 0, 1)),icon:Image.asset("assets/images/hdpi/amazon.png") ,onPressed: (){}, label: const Text(" Melden Sie sich mit Amazon",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                    ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(45,67 ,115, 1)),icon:Image.asset("assets/images/hdpi/facebook.png") ,onPressed: (){}, label: const Text("Melden Sie sich mit Facebook",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                    ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),icon:Image.asset("assets/images/hdpi/google.png",height: 25) ,onPressed: (){}, label: const Text("  Melden Sie sich mit Google  ",style: TextStyle(color: Color.fromRGBO(6, 96, 158, 1),fontSize: 12,fontWeight: FontWeight.bold),)),

                    Column(
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Email*",suffixIcon: Icon(Icons.alternate_email))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextFormField(decoration: InputDecoration(border: const OutlineInputBorder(),labelText: "Passwort*",suffixIcon: IconButton(onPressed: (){setState(() {
                          hide = !hide;
                        });}, icon:hide ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off)))),
                      ),
                        SizedBox(height :40,width:200,child: ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(6,96 ,158, 1)),icon:const Icon(Icons.login) ,onPressed: (){}, label: const Text("Anmelden",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),))),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgettedPassword()));
                        }, child: const Text("Passwort vergessen?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),

                        const Text("Neue Kunden",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color.fromRGBO(6, 96, 158, 1)),),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Ein Konto zu erstellen hat viele Vorteile: schneller zur Kasse gehen, mehr als eine Adresse speichern, Bestellungen verfolgen und mehr.",style: TextStyle(fontSize: 11),),
                        ),
                        SizedBox(height :40,width:200,child: ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(6,96 ,158, 1)),icon:const Icon(Icons.account_box_outlined) ,onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegisterPage()));
                        }, label: const Text("Ein Konto erstellen",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),))),

                      ],
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
