import 'package:flutter/material.dart';
import 'package:funny_lenss/widgets/navigationbar.dart';
import 'package:funny_lenss/widgets/searchbar.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool hide = false;
  bool hidePass = false;

  bool bildirim = false;
  late var news ;
  bool selectNews =false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SearchBarCustom(),
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
                    Divider(height: 2, color: Colors.black38,),
                    Text("Neues Kundenkonto anlegen",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Color.fromRGBO(6, 96, 158, 1))),
                    ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(255, 153, 0, 1)),icon:Image.asset("assets/images/hdpi/amazon.png") ,onPressed: (){}, label: Text(" Melden Sie sich mit Amazon",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                    ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(45,67 ,115, 1)),icon:Image.asset("assets/images/hdpi/facebook.png") ,onPressed: (){}, label: Text("Melden Sie sich mit Facebook",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                    ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),icon:Image.asset("assets/images/hdpi/google.png",height: 25) ,onPressed: (){}, label: Text("  Melden Sie sich mit Google  ",style: TextStyle(color: Color.fromRGBO(6, 96, 158, 1),fontSize: 12,fontWeight: FontWeight.bold),)),

                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text("Persönliche Informationen",style: TextStyle(fontSize: 18,color: Color.fromRGBO(6, 96, 158, 1)),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Vorname*",)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Nachname *",)),
                        ),
                        CheckboxListTile(side: BorderSide(width: 1,color: Color.fromRGBO(6, 96, 158, 1),style: BorderStyle.solid),
                          title: Text(" Anmeldung zum Newsletter",style: TextStyle(fontSize: 9),),
                          value: selectNews,
                          onChanged: (newValue) {
                            setState(() {
                              selectNews = newValue!;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text("Anmeldeinformationen",style: TextStyle(fontSize: 18,color: Color.fromRGBO(6, 96, 158, 1)),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Email*",suffixIcon: Icon(Icons.alternate_email))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Telefonnummer*",suffixIcon: Icon(Icons.phone))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextFormField(obscureText: hide,decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Passwort*",suffixIcon: IconButton(onPressed: (){setState(() {
                            hide = !hide;
                          });}, icon:hide ? Icon(Icons.visibility) : Icon(Icons.visibility_off)))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextFormField(obscureText: hidePass,decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Passwort bestätigen *",suffixIcon: IconButton(onPressed: (){setState(() {
                            hidePass = !hidePass;
                          });}, icon:hidePass ? Icon(Icons.visibility) : Icon(Icons.visibility_off)))),
                        ),




                        SizedBox(height :40,width:200,child: ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(6,96 ,158, 1)),icon:Icon(Icons.account_box_outlined) ,onPressed: (){}, label: Text("Ein Konto erstellen",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),))),

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
