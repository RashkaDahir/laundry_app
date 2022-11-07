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
            width: 200,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100)
            ),
            child: GoogleMap(
       
         initialCameraPosition: _kGooglePlex,
        
        
       ),
          )
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





          // GoogleMap(
       
//         initialCameraPosition: _kGooglePlex,
        
        
//       ),
// static final CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 14.4746,
//   );
