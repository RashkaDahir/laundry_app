import 'dart:math';
import 'dart:ui';

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
        color: Color.fromARGB(255, 12, 12, 12).withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 18,
        offset: Offset(0, 3), // ch.anges position of shadow
      ),
    ],
            ),
            child:Column(
              children: [
                Row(
                  
                  
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60,
                        color: Colors.red,
                        child: Text('gsgg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60,
                        color: Colors.red,
                        child: Text('gsgg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60,
                        color: Colors.red,
                        child: Text('gsgg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60,
                        color: Colors.red,
                        child: Text('gsgg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60,
                        color: Colors.red,
                        child: Text('gsgg'),
                      ),
                    ),
                    
                  ],
                ),
               
                SizedBox(height: 400,),
                Container(
                  
                  child: SizedBox(
                      width: 360,
                      height: 50,
                      child: ElevatedButton(
                      
                        
                        style: ElevatedButton.styleFrom(disabledBackgroundColor:Color.fromARGB(255, 26, 80, 228)),
                        onPressed: null, child: Text('Request Service',style: TextStyle(color: Colors.white),)),
                    ),
                  
                ),
                




              ],
            )
            
            
            
            
            ,
            ),
          
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 252, 249, 249),
        
        items: const[

        BottomNavigationBarItem(icon: Icon(Icons.person_outline,size: 30,color: Colors.black,),label: 'Profile',),
        
         
        BottomNavigationBarItem(icon: Icon(Icons.table_rows,color: Colors.black,),label: 'hshsh'),

        BottomNavigationBarItem(icon: Icon(Icons.alarm,color: Colors.black,),label: 'hshsh'),




      ]),
    
      
    );
  }
}












//  SvgPicture.asset(
          //       "images/tabbar.svg",
          //       color: Colors.red,
                
          //     ),





