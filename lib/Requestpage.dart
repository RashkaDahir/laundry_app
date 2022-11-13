import 'dart:developer';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:laundry_app/servicelist.dart';





class requestpage extends StatefulWidget {
  const requestpage({super.key});

  @override
  State<requestpage> createState() => _requestpageState();
}

class _requestpageState extends State<requestpage> {


    final List<servicesCat> servicelists=[



       servicesCat(image: 'images/Jack’sLaundry.png', title: 'Jack’s Laundry', days: '3.5', price: '\$5', rate: '3.7'),
       servicesCat(image: 'images/Jack’sLaundry.png', title: 'cali', days: '3.5', price: '\$10', rate: '3.7'),
       servicesCat(image: 'images/Jack’sLaundry.png', title: 'somali shirt', days: '3.5', price: '\$20', rate: '3.7'),

    ];

final List<Color> kMixedColors = [
    
];

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        
        children: [

          Container(
            width: double.infinity,
            height: 240,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100)
            ),
            child: GoogleMap(
        
          initialCameraPosition: _kGooglePlex,
        
        
          ),
          ),





          

          
          Container(
            width: MediaQuery.of(context).size.width,
            height: 566.2,
            
            
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
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Text('Choose Laundry Store',style: TextStyle( fontSize: 22, color: Colors.black,fontWeight: FontWeight.bold),),
                    Image.asset('images/reload.png')
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),


                  //shirt cat
              
              SizedBox(
              
                width: double.infinity,
                height: 320,
                
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,

                  itemCount:servicelists.length,
                  itemBuilder:(context, index)  => 
                  
                  
                  new Container(
                    child: Column(children: [
                      Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: new Container(
                              width: 300.0,
                              height: 260.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                color: Colors.red),
                                child:Column(
                                  
                                  children: [
                                    
                                    
                                    Text("  ${servicelists[index].title} "),
                                    Text("  ${servicelists[index].price} "),
                                    
                                    // Image.asset("  ${servicelists[index].image} ",fit: BoxFit.cover,)
                                    
                                    
                                   
                          
                              
                                  ],
                                ),
                            
                            

                            )
                          ),
                    ]),

                  ),
                ),
              ),

              SizedBox(height: 10,),
              
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
        backgroundColor: Color.fromARGB(253, 206, 204, 204),
        
        
        items: const[
          

        BottomNavigationBarItem(icon: Icon(Icons.person,size: 30,color: Colors.black,),label: 'Profile',),
          BottomNavigationBarItem(icon: Icon(Icons.yard_sharp,size: 30,color: Colors.black,),label: 'Profile',),
            BottomNavigationBarItem(icon: Icon(Icons.alarm_on_outlined,size: 30,color: Colors.black,),label: 'Profile',),




      ]),



    );
  }

}