import 'package:flutter/material.dart';
import 'package:funny_lenss/my-orders/my-orders.dart';
import 'package:funny_lenss/pages/merkiiste.dart';
import 'package:funny_lenss/profil/membership_cancel.dart';
import 'package:funny_lenss/profil/pass_change.dart';
import 'package:funny_lenss/profil/useradres.dart';
import 'package:funny_lenss/profil/userinfo.dart';
import 'package:funny_lenss/widgets/navigationbar.dart';
import 'package:funny_lenss/widgets/searchbar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Color navi = const Color.fromRGBO(6, 96, 158, 1);
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchBarCustom(),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children:  [
                  Text(
                    "Profile",
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color:navi ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(color: Colors.black26,),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 100,height: 100,
                  child: CircleAvatar(backgroundColor: Colors.grey.shade200,
                    backgroundImage: const NetworkImage("https://i.tmgrup.com.tr/gq/img/920x615/17-06/22/user_male_circle_filled1600.png",),child: IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt_sharp,),alignment: AlignmentDirectional.bottomEnd,padding: const EdgeInsets.only(left: 77,top: 78),),
                  ),
                ),
                Text("Fatih Akın",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: navi),),
                Card(color:const Color.fromRGBO(137, 58, 53, 1) ,margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: const [
                        Icon(Icons.person,color: Colors.white,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text("Mein Profil",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                        ),

                      ],),
                       Padding(
                        padding: const EdgeInsets.only(left: 45.0,top: 10,bottom: 10),
                        child: GestureDetector(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const UserInfo()));
                        },child: const Text("Persönliche Informationen",style: TextStyle(color: Colors.white),)),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left: 45.0,top: 10,bottom: 10),
                        child: GestureDetector(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const UserAdres()));
                        },child: const Text("Adresse",style: TextStyle(color: Colors.white),)),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left: 45.0,top: 10,bottom: 10),
                        child: GestureDetector(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const PassChange()));
                        },child: const Text("Passwortänderung",style: TextStyle(color: Colors.white),)),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left: 45.0,top: 10,bottom: 10),
                        child: GestureDetector(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MemberShipCancel()));
                        },child: const Text("Mein Abonnement kündigen",style: TextStyle(color: Colors.white,fontSize: 12),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: GestureDetector(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyOrders()));
                        },
                          child: Row(children: const [
                            Icon(Icons.fact_check_outlined,color: Colors.white,),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text("Meine Bestellungen",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                            ),
                          ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: GestureDetector(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Merkiiste()));
                        },
                          child: Row(children: const [
                            Icon(Icons.favorite_border,color: Colors.white,),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text("Merkiiste",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                            ),
                          ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: GestureDetector(onTap: (){},
                          child: Row(children: const [
                            Icon(Icons.discount_outlined,color: Colors.white,),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              child: Text("Meine Rabattgutscheine",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                            ),
                          ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: GestureDetector(onTap: (){},
                          child: Row(children: const [
                            Icon(Icons.exit_to_app,color: Colors.white,),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              child: Text("Austragen",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                            ),
                          ],
                          ),
                        ),
                      ),

                    ],
                ),
                  ),)
              ],
            )

          ],
        ),
      ),
      bottomNavigationBar: const NavigationBarCustom(),
    ));
  }
}
