import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class requestpage extends StatefulWidget {
  const requestpage({super.key});

  @override
  State<requestpage> createState() => _requestpageState();
}

class _requestpageState extends State<requestpage> {
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
         
        Container(
          
          child: Image.asset('images/map.png')),
         


          
          
          
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 232, 228, 228),
        
        items: const[

        BottomNavigationBarItem(icon: Icon(Icons.person_outline,size: 30,color: Colors.black,),label: 'Profile',),
        
         
        BottomNavigationBarItem(icon: Icon(Icons.radar),label: 'hshsh'),

        BottomNavigationBarItem(icon: Icon(Icons.radar),label: 'hshsh'),




      ]),
    
      
    );
  }
}












//  SvgPicture.asset(
          //       "images/tabbar.svg",
          //       color: Colors.red,
                
          //     ),