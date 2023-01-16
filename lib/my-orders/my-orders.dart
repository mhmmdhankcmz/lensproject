import 'package:flutter/material.dart';
import 'package:funny_lenss/widgets/navigationbar.dart';
import 'package:funny_lenss/widgets/searchbar.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 80.0),
            child: Column(
              children: [
                const SearchBarCustom(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: const [
                      Text("Meine Bestellungen", style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Color.fromRGBO(6, 96, 158, 1)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children:  [
                    const Divider(indent: 1,color: Colors.black26,),
                      GestureDetector(onTap: (){

                      },
                        child: Card(
                          child: Row(
                            children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("21 Haziran 2021",style: TextStyle(color: Colors.black,fontSize:9 ),),
                                  const Text("Toplam : 165.00€"),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset("assets/images/eye/blue_eye_small.png",width: 60,),
                                      Image.asset("assets/images/eye/bloodeyesmaal.png",width: 60,),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Row(children:const [
                                   Text("Teslim edildi",style: TextStyle(color: Colors.green,fontSize: 11,fontWeight: FontWeight.bold),),
                                    Icon(Icons.verified_outlined,color: Colors.green,)
                              ] ),
                                  const SizedBox(height: 60, ),
                                  const Text("Detaylar >",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ],),
                        ),
                      ),
                  ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children:  [
                      const Divider(indent: 1,color: Colors.black26,),
                      Card(
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("21 Haziran 2021",style: TextStyle(color: Colors.black,fontSize:9 ),),
                                const Text("Toplam : 165.00€"),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/images/eye/blue_eye_small.png",width: 60,),
                                    Image.asset("assets/images/eye/bloodeyesmaal.png",width: 60,),

                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(children:const [
                                  Text("iptal edildi",style: TextStyle(color: Colors.red,fontSize: 11,fontWeight: FontWeight.bold),),
                                  Icon(Icons.cancel,color: Colors.red,)
                                ] ),
                                const SizedBox(height: 60, ),
                                const Text("Detaylar >",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ],),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children:  [
                      const Divider(indent: 1,color: Colors.black26,),
                      Card(
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("21 Haziran 2021",style: TextStyle(color: Colors.black,fontSize:9 ),),
                                const Text("Toplam : 165.00€"),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/images/eye/blue_eye_small.png",width: 60,),
                                    Image.asset("assets/images/eye/bloodeyesmaal.png",width: 60,),

                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(children:const [
                                  Text("Sipariş edildi",style: TextStyle(color: Colors.green,fontSize: 11,fontWeight: FontWeight.bold),),
                                  Icon(Icons.recommend_outlined,color: Colors.green,)
                                ] ),
                                const SizedBox(height: 60, ),
                                const Text("Detaylar >",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ],),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children:  [
                      const Divider(indent: 1,color: Colors.black26,),
                      Card(
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("21 Haziran 2021",style: TextStyle(color: Colors.black,fontSize:9 ),),
                                const Text("Toplam : 165.00€"),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/images/eye/blue_eye_small.png",width: 60,),
                                    Image.asset("assets/images/eye/bloodeyesmaal.png",width: 60,),

                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(children:const [
                                  Text("Kargoya verildi",style: TextStyle(color: Colors.lightGreen,fontSize: 11,fontWeight: FontWeight.bold),),
                                  Icon(Icons.local_shipping_outlined,color: Colors.lightGreen,)
                                ] ),
                                const SizedBox(height: 60, ),
                                const Text("Detaylar >",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ],),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children:  [
                      const Divider(indent: 1,color: Colors.black26,),
                      Card(
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("21 Haziran 2021",style: TextStyle(color: Colors.black,fontSize:9 ),),
                                const Text("Toplam : 165.00€"),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/images/eye/blue_eye_small.png",width: 60,),
                                    Image.asset("assets/images/eye/bloodeyesmaal.png",width: 60,),

                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(children:const [
                                  Text("Sipariş Hazırlanıyor",style: TextStyle(color: Colors.green,fontSize: 11,fontWeight: FontWeight.bold),),
                                  Icon(Icons.breakfast_dining,color: Colors.green,)
                                ] ),
                                const SizedBox(height: 60, ),
                                const Text("Detaylar >",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ],),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const NavigationBarCustom(),
      ),
    );
  }
}
