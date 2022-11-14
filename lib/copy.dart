// Column(
        
//         children: [

//           Container(
//             width: double.infinity,
//             height: 240,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(100)
//             ),
//             child: GoogleMap(
        
//           initialCameraPosition: _kGooglePlex,
        
        
//           ),
//           ),





          

          
//           Container(
//             width: MediaQuery.of(context).size.width,
//             height: 547,
            
            
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(20),
//     topRight: Radius.circular(20),
//               ),
//               boxShadow: [
//       BoxShadow(
//         color: Color.fromARGB(255, 12, 12, 12).withOpacity(0.5),
//         spreadRadius: 5,
//         blurRadius: 18,
//         offset: Offset(0, 3), // ch.anges position of shadow
//       ),
//     ],
//             ),
//             child:Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20),
//                     child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                     Text('Choose Laundry Store',style: TextStyle( fontSize: 22, color: Colors.black,fontWeight: FontWeight.bold),),
//                     Image.asset('images/reload.png')
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 20,),


//                   //shirt cat
              
//               SizedBox(
              
//                 width: double.infinity,
//                 height: 320,
                
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,

//                   itemCount:servicelists.length,
//                   itemBuilder:(context, index)  => 
                  
                  
//                   new Container(
//                     child: Column(children: [
//                       Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: new Container(
//                               width: 300.0,
//                               height: 260.0,
//                               decoration: BoxDecoration(
//                                 boxShadow: [
//       BoxShadow(
//         color: Color.fromARGB(255, 202, 197, 197).withOpacity(0.5),
//         spreadRadius: 5,
//         blurRadius: 6,
//         offset: Offset(0, 3), // ch.anges position of shadow
//       ),
//     ],
                                
//                                 borderRadius: BorderRadius.circular(30),
//                                 color: Colors.white),
                                
//                                 child:Column(
                                  
//                                   children: [
                                    
                                    
                                    
                                    
//                                       Image.asset( servicelists[index].image,),
//                                       Row(
//                                         children: [
//                                           Text("  ${servicelists[index].title} "),
//                                     Text("  ${servicelists[index].price} "),
//                                         ],
//                                       ),
                                    
                                    
                                   
                          
                              
//                                   ],
//                                 ),
                            
                            

//                             )
//                           ),
//                     ]),

//                   ),
//                 ),
//               ),

//               SizedBox(height: 10,),
              
//                 Container(
                  
//                   child: SizedBox(
//                       width: 360,
//                       height: 50,
//                       child: ElevatedButton(
                      
//                    style: ElevatedButton.styleFrom(disabledBackgroundColor:Color.fromARGB(255, 26, 80, 228)),
//                         onPressed: null, child: Text('Request Service',style: TextStyle(color: Colors.white),)),
//                     ),
                  
//                 ),

               
                


    
//               ],
//             )
            
            
            
            
//             ,
//             ),
          
//         ],
//       ),
//       // bottomNavigationBar: BottomNavigationBar(
//       //   backgroundColor: Color.fromARGB(253, 206, 204, 204),
        
        
//       //   items: const[
          

//       //   BottomNavigationBarItem(icon: Icon(Icons.person,size: 22,color: Colors.black,),label: 'Profile',),
//       //     BottomNavigationBarItem(icon: Icon(Icons.yard_sharp,size: 22,color: Colors.black,),label: 'Profile',),
//       //       BottomNavigationBarItem(icon: Icon(Icons.alarm_on_outlined,size: 22,color: Colors.black,),label: 'Profile',),




//       // ]),

