import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class paymentpage extends StatefulWidget {
  const paymentpage({super.key});

  @override
  State<paymentpage> createState() => _paymentpageState();
}

class _paymentpageState extends State<paymentpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      
      body: 
      SafeArea(
        child: Column(
          
         
          children: [
      
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Text('Payment',style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
             Text('Pleas add your credit card for your ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400)),
             Text('account to use laundry service',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic),),
            Container(
              width:520,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/Credit Card.png'))
              ),
            ),
            

          Image.asset('images/paymentpersons.jpg'),
           SizedBox(height: 20,),



              InkWell(
             
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
                  color: Color.fromARGB(255, 32, 15, 186),
                  borderRadius: BorderRadius.circular(4)
                ),
                child:  Center(child: Text('Add Card',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}