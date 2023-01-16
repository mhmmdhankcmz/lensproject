import 'package:flutter/material.dart';
import 'package:funny_lenss/widgets/navigationbar.dart';
import 'package:funny_lenss/widgets/searchbar.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
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
                Text("Benachrichtigungen",style: TextStyle(color: navib,fontSize: 18),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(children:  [
              Divider(thickness: 1,color: Colors.black45),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,),
                child: Row(
                  children: [
                  CircleAvatar(backgroundColor: navib,maxRadius: 3,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text("Lensiniz kargoya verilmiştir."),
                  ),
                ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:250),
                child: Text("Daha Eski.",style: TextStyle(color: navib),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,),
                child: Row(
                  children: [
                    CircleAvatar(backgroundColor: navib,maxRadius: 3,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("1255 nolu kargonuz teslim edilmiştir.",style: TextStyle(fontSize: 10,color: Colors.black45),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,),
                child: Row(
                  children: [
                    CircleAvatar(backgroundColor: navib,maxRadius: 3,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("1255 nolu kargonuz teslim edilmiştir.",style: TextStyle(fontSize: 10,color: Colors.black45),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,),
                child: Row(
                  children: [
                    CircleAvatar(backgroundColor: navib,maxRadius: 3,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("1255 nolu kargonuz teslim edilmiştir.",style: TextStyle(fontSize: 10,color: Colors.black45),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,),
                child: Row(
                  children: [
                    CircleAvatar(backgroundColor: navib,maxRadius: 3,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("1255 nolu kargonuz teslim edilmiştir.",style: TextStyle(fontSize: 10,color: Colors.black45),),
                    ),
                  ],
                ),
              ), Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,),
                child: Row(
                  children: [
                    CircleAvatar(backgroundColor: navib,maxRadius: 3,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("1255 nolu kargonuz teslim edilmiştir.",style: TextStyle(fontSize: 10,color: Colors.black45),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,),
                child: Row(
                  children: [
                    CircleAvatar(backgroundColor: navib,maxRadius: 3,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("1255 nolu kargonuz teslim edilmiştir.",style: TextStyle(fontSize: 10,color: Colors.black45),),
                    ),
                  ],
                ),
              ),
            ],
            ),
          )
        ]),
      ),
    bottomNavigationBar: const NavigationBarCustom()
    ),
    );
  }
}
