import 'dart:ui';

import 'package:flutter/material.dart';


class servicepage extends StatelessWidget {
  const servicepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 90,
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                color: Color.fromARGB(248, 236, 236, 234)
               
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Services' ,style: TextStyle(fontSize: 34,fontWeight: FontWeight.w600),),
              ),
            ),
            Expanded(
              
              child: ListView.builder(
                itemBuilder:((context, index) {
                return Container(
                  width: double.infinity,
                  height: 100,
                  
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(255, 23, 22, 22),width: 0.07),

                    color: Colors.white,
                    
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Amazing Cleaner' ,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 5, 12, 207)),),
                            SizedBox(height: 6,),
                            Text('April 22nd, 2020 at 4:30PM', style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 148, 144, 144)),)
                          ],


                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.only(right: 5),
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('\$14.56' ,style: TextStyle(fontSize: 14),),
                            Text('Drying', style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 23, 117, 195)),)
                          ],
                          

                      ),
                       ),

                    ],
                  ),
                );
              })),
            )
         
            
          ],
        ),
      ),
    );
  }
}




// import 'dart:ui';

// import 'package:flutter/material.dart';

// class servicepage extends StatelessWidget {
//   const servicepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 250, 243, 243),
//         elevation: 0.1,
//         leadingWidth: 140,
//         leading: Padding(
//           padding: const EdgeInsets.only(top: 10),
//           child: Text(
//             'Services',
//             style: TextStyle(fontSize: 30, color: Colors.black),
//           ),
//         ),
//       ),
//       body: ListView.builder(
//           itemCount: 40,
//           itemBuilder: (BuildContext, index) {
//             return Container(
//               height: 60,
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.black12),
//                 color: Colors.white,
//               ),
//               child: Text('d'),
//             );
//           }),
//     );
//   }
// }
