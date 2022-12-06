import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:laundry_app/laundry_login.dart';
import './custom_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './Requestpage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import './payment.dart';
import './laundry_login.dart';

import 'bottomnavition.dart';

class profilepage extends StatelessWidget {
  const profilepage({super.key});
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bg,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: CustomColors.appbarprofilepage,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      'Profile',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40, right: 8),
                    child: Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => bottomnavbar()));
                        },
                        child: Text(
                          'Edit',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff3D5AF1),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset('images/profilepic.png'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'First  Last',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            fontFamily: 'Rubik'),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'email@gmail.com',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            fontFamily: 'Rubik'),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
              ),
              child: Row(
                children: [
                  Image.asset('images/loc.png'),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '1234 Address Ln',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Rubik'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                width: double.infinity,
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  child: GoogleMap(
                    initialCameraPosition: _kGooglePlex,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
            
              width: 360,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: CustomColors.Payment),
                
                onPressed: () {
                  Navigator.push(context,
                MaterialPageRoute(builder: (context) => paymentpage()));
          
                },
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Payment', style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w600),), Text('***123',style: TextStyle(color: Colors.white),)],
                ),
              ),
            ),
            SizedBox(height: 14,),
             SizedBox(
              width: 360,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: CustomColors.Payment),
               
                onPressed: () {},
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Support',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w600),),Image.asset('images/questions.png')],
                ),
              ),
            ),
            SizedBox(height: 14,),
             SizedBox(
              width: 360,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor:CustomColors.btn_logout),
                
                onPressed: () {
                   Navigator.push(context,
                MaterialPageRoute(builder: (context) => laundry_app()));
                },
              
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Logout',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w600),),
                  Icon(Icons.arrow_forward ,color:Colors.white ,)],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//  MaterialButton(
//               minWidth: 340,
//               onPressed: () {

//               },
//               color: Color(0xff3D5AF1),

//               child: Text('d'),
//              ),

             
//              MaterialButton(
//               minWidth: 340,
//               onPressed: () {

//               },
//               color: Color(0xffFF7A3C),

//               child: Text('d'),
//              ),