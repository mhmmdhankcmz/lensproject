import 'package:flutter/material.dart';

class Siralama extends StatefulWidget {
  const Siralama({Key? key}) : super(key: key);

  @override
  State<Siralama> createState() => _SiralamaState();
}

class _SiralamaState extends State<Siralama> {
  String selectedSiralama =  "Sortieren nach";
  final siralama = <String>[
    "Sortieren nach","Position","Product name","Preis","Bestseller Order"
  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(width: 129,height: 42,
      child: DropdownButton(menuMaxHeight: 129,borderRadius: BorderRadius.circular(10),
        value: selectedSiralama,
        items: siralama.map<DropdownMenuItem<String>>(
                (String value) {
              return DropdownMenuItem<String>(alignment: Alignment.centerLeft,
                value: value,
                child: Text(value.toString(),style: TextStyle(fontSize: 11),),
              );
            }).toList(),
        onChanged: (String? secilenVeri) {
          setState(() {
            selectedSiralama = secilenVeri!;
          });
        },
      ),
    );
  }
}
