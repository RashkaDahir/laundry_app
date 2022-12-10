
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:laundry_app/bottomnavition.dart';
import 'package:laundry_app/laundry_login.dart';

class firebaseAuth extends StatelessWidget {
  const firebaseAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if(snapshot.hasData){
          return bottomnavbar();
        }else{
          return laundry_app();
        }
        
      },
      
      ),
    );
  }
}