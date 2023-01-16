import 'package:flutter/material.dart';

class ProductDelete extends StatelessWidget {
  const ProductDelete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15),
      child: Container(height: 30,width:30,color: Color.fromRGBO(6, 96, 158, 1),child: IconButton(onPressed: (){}, icon: Icon(Icons.remove_sharp,size: 15,color: Colors.white,)),),
    );
  }
}
