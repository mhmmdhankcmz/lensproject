import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:funny_lenss/pages/notifications.dart';

class SearchBarCustom extends StatefulWidget {
  const SearchBarCustom({Key? key}) : super(key: key);

  @override
  State<SearchBarCustom> createState() => _SearchBarCustomState();
}

class _SearchBarCustomState extends State<SearchBarCustom> {
  bool doSearch = true;
  var search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:16.0,),
          child: SizedBox(
            width: 286,
            height: 42,
            child: TextFormField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintStyle: const TextStyle(
                  fontSize: 11,
                ),
                hintText: "Amazon.de durschsuchen",
                prefixIconColor: Colors.black,
                suffixIconColor: Colors.black,
                prefixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      doSearch = true;
                    });
                  },
                ),
                suffixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceAround, // added line
                  mainAxisSize: MainAxisSize.min, // added line
                  children: <Widget>[
                    IconButton(onPressed: (){}, icon: Image.asset("assets/images/hdpi/scan.png",width: 18.55),),
                    IconButton(
                      icon: const Icon(Icons.mic_none_outlined),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

        Badge(badgeColor: Colors.red,elevation: 10,position: BadgePosition.topEnd(end: 5,top: -3),badgeContent: const Text("5",style: TextStyle(color: Colors.white),),animationType: BadgeAnimationType.slide,
            child: IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Notifications()));
            }, icon: const Icon(Icons.notifications_rounded,),iconSize: 35,color: const Color.fromRGBO(6, 96, 158, 1),))
      ],
    );
  }
}
