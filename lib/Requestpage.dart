import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:laundry_app/servicelist.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './custom_color.dart';
import './profilepage.dart';
import './servicepage.dart';
import './bottomnavition.dart';

class requestpage extends StatefulWidget {
  const requestpage({super.key});

  @override
  State<requestpage> createState() => _requestpageState();
}

class _requestpageState extends State<requestpage> {
  final List<servicesCat> servicelists = [
    servicesCat(
        image: 'images/bobs_.png',
        title: 'BOBS Laundry',
        days: '3.5',
        price: '\$5',
        rate: '3.7'),
    servicesCat(
        image: 'images/Jack’sLaundry.png',
        title: 'Jack’s Laundry',
        days: '3.5',
        price: '\$10',
        rate: '3.7'),
    servicesCat(
        image: 'images/rose_3.png',
        title: 'ROSE LAUNDRAY',
        days: '3.5',
        price: '\$20',
        rate: '3.7'),
  ];

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: height * 0.25,
                  decoration: BoxDecoration(),
                  child: GoogleMap(
                    initialCameraPosition: _kGooglePlex,
                  ),
                ),
              ],
            ),

//container-radius

            Container(
             height: height * 0.6847,
              decoration: BoxDecoration(
                color: CustomColors.container_background,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 12, 12, 12).withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 18,
                    offset: Offset(0, 3), // ch.anges position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 40, left: 20, right: 20),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Center(
                            child: Text(
                              'Choose Laundry Store',
                              style: TextStyle(
                                fontSize: 28,
                                color: CustomColors.cont_title,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Image.asset('images/reload.png')
                        ],
                      ),
                    ),
                  ),

                  //shirt cat

                  SizedBox(
                    height: 310,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: servicelists.length,
                        itemBuilder: (context, index) => Container(
                              child: Column(children: [
                                Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Container(
                                      width: 330,
                                      height: 250.0,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                      255, 202, 197, 197)
                                                  .withOpacity(0.5),
                                              spreadRadius: 5,
                                              blurRadius: 8,
                                              offset: Offset(0,
                                                  3), // ch.anges position of shadow
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: CustomColors.card_Color),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            servicelists[index].image,
                                            fit: BoxFit.cover,
                                            height: 200,
                                            width: 330,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "  ${servicelists[index].title}  ",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.amber,
                                                    ),
                                                    Text(
                                                      "  ${servicelists[index].price}",
                                                      style: TextStyle(
                                                          fontSize: 15),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                              ]),
                            )),
                  ),
                  // SizedBox(
                  //   height:  0,
                  // ),
                

                  Container(
                    child: SizedBox(
                      width: 340,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              disabledBackgroundColor:
                                  Color.fromARGB(255, 26, 80, 228)),
                          onPressed: null,
                          child: Text(
                            'Request Service',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
