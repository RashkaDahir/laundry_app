import 'package:flutter/material.dart';
import './custom_color.dart';

class profilepage extends StatelessWidget {
  const profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Column(
          
          children: [
           
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                color:CustomColors.appbarprofilepage,
      
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Profile',style: TextStyle(fontSize: 20,),),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 40),
                     
                     child: Text('Edit',style: TextStyle(fontSize: 20,),),
                   ),
                  
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}