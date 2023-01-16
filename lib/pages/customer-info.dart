import 'package:flutter/material.dart';
import 'package:funny_lenss/payment/money_order.dart';
import 'package:funny_lenss/widgets/navigationbar.dart';
import 'package:funny_lenss/widgets/searchbar.dart';


class CustomerInfo extends StatefulWidget {
  const CustomerInfo({Key? key}) : super(key: key);


  @override
  State<CustomerInfo> createState() => _CustomerInfoState();

}

class _CustomerInfoState extends State<CustomerInfo> {
  Color navib = const Color.fromRGBO(6, 96, 158, 1);
  int steps = 0;
  bool news = false;
  int deger = 0;

  List<Step> getSteps()=>[
    Step(state: steps > 0 ? StepState.complete :StepState.indexed
        ,title: const Text("Versand"), content: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Email*",suffixIcon: Icon(Icons.alternate_email))),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Vorname*",suffixIcon: Icon(Icons.person))),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Nachname*",suffixIcon: Icon(Icons.person))),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Kompanie",suffixIcon: Icon(Icons.business))),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Anschrift",suffixIcon: Icon(Icons.add_business_rounded))),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Stadt*",suffixIcon: Icon(Icons.location_city))),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Bundesland/Provinz",suffixIcon: Icon(Icons.location_city_outlined))),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Postleitzahl*",suffixIcon: Icon(Icons.local_post_office))),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Land",suffixIcon: Icon(Icons.domain))),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Telefonnummer",suffixIcon: Icon(Icons.phone))),
            ),
            Text("Versandmethoden",style: TextStyle(fontSize:18 ,color: Color.fromRGBO(6, 96, 158, 99)),),
            Divider(color: Colors.black45),
            Row(
              children: [

              ],
            ),
            RadioListTile(contentPadding: EdgeInsets.all(0),title: Text("3,90 €",style: TextStyle(fontSize: 10),),value: 1, groupValue: deger, onChanged: (int? gelen){
              setState(() {
                deger = gelen!;
              });
            }),

            RadioListTile(contentPadding: EdgeInsets.all(0),title: Text("DHL Versand",style: TextStyle(fontSize: 10),),value: 2, groupValue: deger, onChanged: (int? gelen){
              setState(() {
                deger = gelen!;
              });
            }),

            RadioListTile(contentPadding: EdgeInsets.all(0),title: Text("DHL Paket",style: TextStyle(fontSize: 10),),value: 3, groupValue: deger, onChanged: (int? gelen){
              setState(() {
                deger = gelen!;
              });
            }),
          ],
        ),label: const Icon(Icons.check_rounded),isActive: steps >= 1),
    Step(state: steps > 0 ? StepState.complete :StepState.indexed,
        title: const Text("Übersicht und Zahlung"), content: Column(
          children: [
            ExpansionTile(title: Image.asset("assets/images/hdpi/paypal-logo-100x26.png",height: 50,),
              children: [
                ListTile(title: Text("Paypal",textAlign: TextAlign.center),subtitle: Text("Verwenden Sie PayPal zum ersten Mai? Eröffnen Sie beim Bezahlen einfachein kostenloses Konto und profitieren Sie vom Kauferschutz.",style: TextStyle(fontSize: 7),),),
              ],
            ),
            ExpansionTile(title: Image.asset("assets/images/hdpi/bank-logo.png",height: 50,),
            children: [
              ListTile(title: Text("Lastschrift",textAlign: TextAlign.center),
              subtitle: Text("Ein PayPal-Service. Sie benötigen kein PayPal-Konto.",style: TextStyle(fontSize: 7),),)
            ],),
            ExpansionTile(title: Image.asset("assets/images/hdpi/cc-logo.png",height: 50,),
            children: [
              ListTile(title: Text("KreditKarte",textAlign: TextAlign.center),subtitle: Text("Ein PayPal-Service. Sie benötigen kein PayPal-Konto.",style: TextStyle(fontSize: 7),),)
            ],
            ),
            ExpansionTile(title: Image.asset("assets/images/hdpi/bankueberweisung.png",height: 50,),
            children: [
              ListTile(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const MoneyOrder()));
              },title: Text("Banküberweisung Vorkasse",textAlign: TextAlign.center,),subtitle: Text("Wir versenden die Waren nach Zahlungseingang auf unserem Bankkonto.Bitte geben Sie bei der Überweisung die Bestellnummer, sowie Ihren Vor - undNachnamen an. Konto 123:  13212:456:BYLADEM1ERD Sparkasse Erding-Dorfen ",style: TextStyle(fontSize: 7),),)
            ],
            ),
            Row(
              children: [
                Checkbox(value: news, onChanged: (bool? value){
                  setState(() {
                    news = value!;
                  });
                }),
                Text("Ich habe die Allgemeinen Geschäftsbedingungen \ngelesen und stimmediesen ausdrücklich zu ",style: TextStyle(fontSize: 7),),
              ],
            )

          ],

        ),label: const Icon(Icons.check_rounded),isActive: steps >=2),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Theme(data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(primary: Color.fromRGBO(91, 210, 236, 1))
        ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SearchBarCustom(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children:  [
                      Text("Versandadresse", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color:navib),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: const [
                      Divider(color: Colors.black45,height: 10,),
                    ],
                  ),
                ),
            Stepper(physics: ScrollPhysics(),
              type: StepperType.vertical,
              steps: getSteps(),
              currentStep: steps,
              onStepTapped: (step) =>setState(() =>steps = step),
              onStepContinue: (){
                final isLastStep = steps == getSteps().length -1;
                if(isLastStep){
                  print("Completed");
                }else{
                  setState(() => steps += 1);
                }
              },
              onStepCancel: steps == 0 ? null : () => setState(() =>steps -= 1),
              controlsBuilder: (context, details) {
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: details.onStepContinue, child: Text("Weiter")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: details.onStepCancel, child: Text("Der Rücken")),
                    ),
                  ],
                );
              },
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



