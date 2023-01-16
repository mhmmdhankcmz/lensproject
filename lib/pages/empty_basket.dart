import 'package:flutter/material.dart';
import 'package:funny_lenss/pages/bestseller.dart';
import 'package:funny_lenss/widgets/navigationbar.dart';
import 'package:funny_lenss/widgets/searchbar.dart';

class EmptyBasket extends StatefulWidget {
  const EmptyBasket({Key? key}) : super(key: key);

  @override
  State<EmptyBasket> createState() => _EmptyBasketState();
}

class _EmptyBasketState extends State<EmptyBasket> {
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
                        Text("Warenkorb", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Color.fromRGBO(6, 96, 158, 1)),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      child: Image.asset("assets/images/hdpi/basket.png",),
                    ),
                    Text("Es befinden sich keine Produkte in Ihrem Warenkorb.",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50.0),
                      child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(6, 96, 158, 1)),onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BestSeller()));
                      }, child: Text("BEGINN MIT DEM EINKAUF")),
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
