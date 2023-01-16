import 'package:flutter/material.dart';
import 'package:funny_lenss/widgets/navigationbar.dart';
import 'package:funny_lenss/widgets/product_add.dart';
import 'package:funny_lenss/widgets/product_delete.dart';
import 'package:funny_lenss/widgets/searchbar.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool doSearch = true;
  var search = TextEditingController();
  bool bildirim = false;
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SearchBarCustom(),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Stack(children: [
                Image.asset(
                  "assets/images/eye/big-blue.png",
                  width: 350,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 1.0, top: 1.0),
                  child: Image.asset("assets/images/hdpi/neu.png"),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 15.0, right: 40),
                    child: Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(6, 96, 158, 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                favorite = !favorite;
                              });
                            },
                            icon: favorite
                                ? const Icon(Icons.favorite,
                                    size: 25, color: Colors.red)
                                : const Icon(Icons.favorite,
                                    size: 25, color: Colors.white)),
                      ),
                    )),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: const [
                  Text(
                    "Alper",
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "17,90 €",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(241, 194, 50, 1),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(241, 194, 50, 1),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(241, 194, 50, 1),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(241, 194, 50, 1),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(241, 194, 50, 1),
                  ),
                  Spacer(),
                  Text(
                    "11  Bewertungen Ihre Bewertung hinzufügen",
                    style: TextStyle(fontSize: 9),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Row(
                children: const [
                  Text(
                    "1 Paar Kontaktlinsen - Perfekt für dein Kostüm für Halloween und Karneval.",
                    style: TextStyle(fontSize: 7),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Row(
                children: const [
                  Text(
                    "Auf Lager  inkl. MwSt",
                    style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Divider(
                color: Color.fromRGBO(236, 232, 232, 1),
                thickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15.0),
              child: Row(
                children: [
                  Text("Set auswählen:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9),),
                  Spacer(),
                  ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(240, 240, 240, 1)
                  ),onPressed: (){}, child: Text("Nur Behälter",style: TextStyle(fontSize: 9,color: Color.fromRGBO(6, 96, 158, 1)),)),
                  Spacer(),
                  ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(240, 240, 240, 1)
                  ),onPressed: (){}, child: Text("Komplettset",style: TextStyle(fontSize: 12,color: Color.fromRGBO(6, 96, 158, 1)),)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 1.0,),
              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProductDelete(),
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(width: 2,color: Color.fromRGBO(6, 96, 158, 1)),color: Color.fromRGBO(240, 240, 240, 1)),height:50,width:50,child: Center(child: Text("5",style: TextStyle(fontSize: 19),))),
                  ProductAdd(),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: ElevatedButton.icon(style: ElevatedButton.styleFrom( backgroundColor: Color.fromRGBO(6, 96, 158, 1)),label: Text("Warenkorb",style: TextStyle(fontSize: 18),),onPressed: (){},icon: Image.asset("assets/images/hdpi/shop.png"),),
                  )
                ]
              ),
            ),
            Container(margin: EdgeInsets.only(right: 265,bottom: 10,top: 10),child: Center(child: Text("Details",style: TextStyle(color: Colors.white),)),height: 30,width: 70,decoration: BoxDecoration(color: Color.fromRGBO(6, 96, 158, 1),borderRadius: BorderRadius.vertical(top: Radius.circular(5)))),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15,bottom: 1,),
              child: Container(
                child: ReadMoreText(
                  'Wer wollte nicht schon einmal strahlend blaue Augen haben? Mit diesen blauen Kontaktlinsen ohne Stärke wird das möglich! Durch diese blauen Kontaktlinsen ohne Stärke bist du auf der nächsten Party garantiert ein Hingucker. Doch blau ist nicht gleich blau. Ob dunkelblau, kristallblau oder himmelblau, durch die vielen crazy Variationen bekommst du das intensive Blau, welches du dir für deine Augen wünschst. Einfach crazy!',
                  trimLines: 5,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',style: TextStyle(fontWeight: FontWeight.bold),
                  trimExpandedText: ' Show less',
                  moreStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(margin: EdgeInsets.only(right: 180,bottom:20,top: 10),child: Center(child: Text("Mehr Information",style: TextStyle(color: Colors.white),)),height: 40,width: 150,decoration: BoxDecoration(color: Color.fromRGBO(6, 96, 158, 1),borderRadius: BorderRadius.vertical(top: Radius.circular(5)))),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right:15.0),
              child: Row(
                children: [
                  Text("Set Art",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text("Basic- & Komplettset",style: TextStyle(fontSize: 9,),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20,left:15,right: 15),
              child: Divider(height: 10,color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right:15.0),
              child: Row(
                children: [
                  Text("Lieferzeit",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text("1 - 3 Tage Lieferzeit",style: TextStyle(fontSize: 9,),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20,left:15,right: 15),
              child: Divider(height: 10,color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right:15.0),
              child: Row(
                children: [
                  Text("Marke",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text("MeralenS",style: TextStyle(fontSize: 9,),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20,left:15,right: 15),
              child: Divider(height: 10,color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right:15.0),
              child: Row(
                children: [
                  Text("Härte",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text("Weiche Kontaktlinsen",style: TextStyle(fontSize: 9,),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20,left:15,right: 15),
              child: Divider(height: 10,color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right:15.0),
              child: Row(
                children: [
                  Text("Haltbarkeit",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text("Jahreslinsen (12 Monatenach \n  Öffnung anwendbar)",style: TextStyle(fontSize: 9,wordSpacing: 1),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20,left:15,right: 15),
              child: Divider(height: 10,color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right:15.0),
              child: Row(
                children: [
                  Text("Durchmesser",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text("14.00 mm",style: TextStyle(fontSize: 9,),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20,left:15,right: 15),
              child: Divider(height: 10,color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right:15.0),
              child: Row(
                children: [
                  Text("Krümmungsradius",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text("8.60°",style: TextStyle(fontSize: 9,),),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20,left:15,right: 15),
              child: Divider(height: 10,color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right:15.0),
              child: Row(
                children: [
                  Text("Flüssigkeit im Fläschchen",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0,),
                    child: Text("38% Wasser, Polymacon,\n steril gelagert in isotonischer,\n gepufferter Kochsalzsöung",style: TextStyle(fontSize: 9,),),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20,left:15,right: 15),
              child: Divider(height: 10,color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right:15.0),
              child: Row(
                children: [
                  Text("Material",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0,),
                    child: Text("Hydrogel Terpolymer",style: TextStyle(fontSize: 9,),),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20,left:15,right: 15),
              child: Divider(height: 10,color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right:15.0),
              child: Row(
                children: [
                  Text("Farbe",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0,left:10),
                    child: Text("Blaue",style: TextStyle(fontSize: 9,),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10,left:15,right: 15),
              child: Divider(height: 10,color: Colors.black,),
            ),
            Container(margin: EdgeInsets.only(right: 180,bottom:20,top: 10),child: Center(child: Text("Bewertungen (11)",style: TextStyle(color: Colors.white),)),height: 40,width: 150,decoration: BoxDecoration(color: Color.fromRGBO(6, 96, 158, 1),borderRadius: BorderRadius.vertical(top: Radius.circular(5)))),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 10.0,right: 15),
              child: Row(
                children: [
                  Text("Tolles Produkt" ,style: TextStyle(fontSize: 14,color: Color.fromRGBO(6, 96, 158, 1),fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text(" Bewertung" ,style: TextStyle(fontSize: 11,color: Colors.black,fontWeight: FontWeight.bold),),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(241, 194, 50, 1),size: 12,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(241, 194, 50, 1),size: 12,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(241, 194, 50, 1),size: 12,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(241, 194, 50, 1),size: 12,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(241, 194, 50, 1),size: 12,
                  ),
                ],
              ),
              ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10,left: 15.0,right: 15),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Die Kontaktlinsen lassen sich (auch für das erste Mal) angenehm tragen, sehen gut aus und kamen schnell zuhause an. Jederzeit gern wieder"),
                  SizedBox(height: 10,),
                  Text("Bewertung von - Mike November"),
                  Text("Veröffentlicht am 09.10.18"),
                  Divider(height: 10,color: Colors.black,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 10.0,right: 15),
              child: Row(
                children: [
                  Text("Klasse" ,style: TextStyle(fontSize: 14,color: Color.fromRGBO(6, 96, 158, 1),fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text(" Bewertung" ,style: TextStyle(fontSize: 11,color: Colors.black,fontWeight: FontWeight.bold),),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(241, 194, 50, 1),size: 12,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(241, 194, 50, 1),size: 12,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(241, 194, 50, 1),size: 12,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(241, 194, 50, 1),size: 12,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(241, 194, 50, 1),size: 12,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10,left: 15.0,right: 15),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Die Linsen sehen genauso aus wie auf dem Bild. Schön knallig und deckend. Man hat keinen blauen Schleier vor den Augen, sondern kann gut hindurch sehen."),
                  SizedBox(height: 10,),
                  Text("Bewertung von Satanspoodle"),
                  Text("Veröffentlicht am 09.10.18"),
                  Divider(height: 10,color: Colors.black,),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 80,right: 15),
                  child: Container(height: 30,width:30,color: Color.fromRGBO(6, 96, 158, 1),child: IconButton(onPressed: (){}, icon: Center(child: Text("1",style: TextStyle(fontSize: 10,color: Colors.white),))),),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 80,right: 15),
                  child: Container(decoration: BoxDecoration(border: Border.all(color: Color.fromRGBO(6, 96, 158, 1),width: 2)),height: 30,width:30,child: IconButton(onPressed: (){}, icon: Center(child: Text("2",style: TextStyle(fontSize: 9,color: Color.fromRGBO(6, 96, 15, 1)),))),),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 80,right: 15),
                  child: Container(decoration: BoxDecoration(border: Border.all(color: Color.fromRGBO(6, 96, 158, 1),width: 2)),height: 30,width:30,child: IconButton(onPressed: (){}, icon: Center(child: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(6, 96, 158, 1),size: 10,)),),
                ),
                ),
              ],
            ),

          ],
        ),
      ),
      bottomNavigationBar: const NavigationBarCustom(),
    ));
  }
}
