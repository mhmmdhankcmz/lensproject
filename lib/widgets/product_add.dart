import 'package:flutter/material.dart';

class ProductAdd extends StatefulWidget {
   ProductAdd({Key? key}) : super(key: key);


  @override
  State<ProductAdd> createState() => _ProductAddState();
}

class _ProductAddState extends State<ProductAdd> {
  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.only(left: 15.0,right: 15),
      child: Container(height: 30,width:30,color: Color.fromRGBO(6, 96, 158, 1),child: IconButton(onPressed: (){

      }, icon: Icon(Icons.add,size: 15,color: Colors.white,)),),
    );
  }
}


