import 'package:flutter/material.dart';
import 'package:funny_lenss/pages/customer-info.dart';
import 'package:funny_lenss/widgets/product_add.dart';
import 'package:funny_lenss/widgets/product_delete.dart';
import 'package:funny_lenss/widgets/searchbar.dart';

import '../widgets/navigationbar.dart';

class Sepet extends StatefulWidget {
  const Sepet({Key? key}) : super(key: key);

  @override
  State<Sepet> createState() => _SepetState();
}

class _SepetState extends State<Sepet> {
  bool bildirim = false;

  bool selectNews =false;
  Color funnyB = const Color.fromRGBO(6, 96, 158, 1);




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
                    Text("Warenkorb", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Color.fromRGBO(6, 96, 158, 1)),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const Divider(color: Colors.black45,),
                    Row(
                      children: [
                        Image.asset("assets/images/eye/blue_eye_small.png",),
                        ProductAdd(),
                        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(width: 2,color: const Color.fromRGBO(6, 96, 158, 1)),color: const Color.fromRGBO(240, 240, 240, 1)),height:50,width:50,child: const Center(child: Text("1",style: TextStyle(fontSize: 19),))),
                        const ProductDelete(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Text("17,90 €",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black45),),

                              IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: funnyB,))
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const Divider(color: Colors.black45,),
                    Row(
                      children: [
                        Image.asset("assets/images/eye/blue_eye_small.png",),
                        ProductAdd(),
                        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(width: 2,color: const Color.fromRGBO(6, 96, 158, 1)),color: const Color.fromRGBO(240, 240, 240, 1)),height:50,width:50,child: const Center(child: Text("1",style: TextStyle(fontSize: 19),))),
                        const ProductDelete(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Text("17,90 €",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black45),),

                              IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: funnyB,))
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const Divider(color: Colors.black45,),
                    Row(
                      children: [
                        Image.asset("assets/images/eye/blue_eye_small.png",),
                        ProductAdd(),
                        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(width: 2,color: const Color.fromRGBO(6, 96, 158, 1)),color: const Color.fromRGBO(240, 240, 240, 1)),height:50,width:50,child: const Center(child: Text("1",style: TextStyle(fontSize: 19),))),
                        const ProductDelete(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Text("17,90 €",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black45),),

                              IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: funnyB,))
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const Divider(color: Colors.black45,),
                    Row(
                      children: [
                        Image.asset("assets/images/eye/bloodeyesmaal.png",),
                        ProductAdd(),
                        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(width: 2,color: funnyB),color: const Color.fromRGBO(240, 240, 240, 1)),height:50,width:50,child: const Center(child: Text("1",style: TextStyle(fontSize: 19),))),
                        const ProductDelete(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Text("17,90 €",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black45),),

                              IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: funnyB,))
                            ],
                          ),
                        )
                      ],
                    ),
                    const Divider(color: Colors.black45,),
                  ],
                ),
              ),

              GestureDetector(onTap: (){},
                child: Card(
                  child: Stack(
                    children: [
                      Container(margin: const EdgeInsets.only(left: 200),width:120,height:50,child: const Card(color: Colors.red,)),
                      const Padding(
                        padding: EdgeInsets.only(left: 40.0,top: 15),
                        child: Text("% 25 indirim kullan",style:TextStyle(color: Colors.black87,fontSize: 15,fontWeight: FontWeight.bold),),
                      ),

                      const SizedBox(width:320,height:50,child: Card(color: Colors.white10,)),
                      const Padding(
                        padding: EdgeInsets.only(left: 12,top: 12),
                        child: Icon(Icons.discount_outlined),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left:225.0,top: 12),
                        child: Text("Verwenden",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Text("Rabatt",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    Spacer(),
                    Text("25 €",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black38),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    const Text("Warenkorb-Zwischensumme:",style: TextStyle(fontSize: 12,),),
                    const Spacer(),
                    Text("35,80 €",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: funnyB)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0,bottom: 80,),
                child: SizedBox(width:280,height: 50,child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: funnyB,),onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CustomerInfo()));
                }, child: const Text("Zur Kasse gehen",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,),))),
              )
            ],
          ),
        ),
        bottomNavigationBar: const NavigationBarCustom(),
      ),
    );
  }
}
