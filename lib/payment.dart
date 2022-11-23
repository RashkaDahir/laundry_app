import 'dart:ui';

import 'package:flutter/material.dart';


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
              padding: const EdgeInsets.all(18.0),
              child: Text('Payment',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
             Text('Pleas add your credit card for your ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400)),
             Text('account to use laundry service',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),),
            Container(
              width:520,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/Credit Card.png'))
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}