import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';




class requestpage extends StatefulWidget {
  const requestpage({super.key});

  @override
  State<requestpage> createState() => _requestpageState();
}

class _requestpageState extends State<requestpage> {

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100)
            ),
            child: GoogleMap(
       
         initialCameraPosition: _kGooglePlex,
        
        
       ),
          ),

          
          Container(
            
            width: double.infinity,
            height: 700,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
              ),
              boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 50,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
            ),
            child: ListView(
              children: [
                
              
                   
                   ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Text('ggsgg'),
               Text('ggsgg'),
               Text('ggsgg')
                    ],
                   )
              
              ],
            )),
          
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 232, 228, 228),
        
        items: const[

        BottomNavigationBarItem(icon: Icon(Icons.person_outline,size: 30,color: Colors.black,),label: 'Profile',),
        
         
        BottomNavigationBarItem(icon: Icon(Icons.tab_rounded),label: 'hshsh'),

        BottomNavigationBarItem(icon: Icon(Icons.alarm),label: 'hshsh'),




      ]),
    
      
    );
  }
}












//  SvgPicture.asset(
          //       "images/tabbar.svg",
          //       color: Colors.red,
                
          //     ),





          // GoogleMap(
       
//         initialCameraPosition: _kGooglePlex,
        
        
//       ),
// static final CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 14.4746,
//   );
