import 'package:flutter/material.dart';

import './laundry_login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';


// void main() async =>
// // WidgetsFlutterBinding.ensureInitialized();
//  runApp(MaterialApp(
//   home: laundry_app(),
//   debugShowCheckedModeBanner: false,
// ));


void main () async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(
    const mainapp(),

  );
}

class mainapp extends StatelessWidget {
  const mainapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:laundry_app() ,
    );
  }
}