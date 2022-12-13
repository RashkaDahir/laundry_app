
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:laundry_app/bottomnavition.dart';

import 'package:laundry_app/profilepage.dart';

import './laundry_login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
   final _emailcontroller = TextEditingController();
  final _passwordController = TextEditingController();
  
  @override
  void dispose() {
   _emailcontroller.dispose();
   _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('./images/bg_login.png'),fit: BoxFit.cover)
      ),
       child: ListView(children: [
        SafeArea(child: Column(
          children: [
              _kangaroo_questions_row(),
                 SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    'Clean Kangaroo',
                    style: TextStyle(
                        fontFamily: '',
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),

              SizedBox(height: 40,),
              _form(),
              _Have_already_an_account_signin(),
              _signup(),
                SizedBox(
                  height: 180,
                ),

                Text(
                  'Terms of Service and Pivacy Policy',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.end,
                ),
                
          ],
        ))

       
       ],),
     ),

    );
  }
  
  _kangaroo_questions_row() {
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset('images/logo.png'),
          SizedBox(
            width: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 90),
            child: InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (Builder) => AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          content: SizedBox(
                            width: 293,
                            height: 280,
                            child: Column(
                              children: [
                                Image.asset('images/Vector.png'),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '1.Browse',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 26,
                                      fontFamily: 'Rubik',
                                      color: Color.fromARGB(255, 9, 63, 164)),
                                ),
                                Text('Choose your preferred local'),
                                SizedBox(
                                    width: 245,
                                    child: Text(
                                      'laundry store from dozens of options nearby.View ratings and pricing per item for each store.',
                                      style: TextStyle(fontSize: 17),
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                    width: 100,
                                    height: 50,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 25, 61, 243)),
                                      child: Text(
                                        'next',
                                        style: TextStyle(
                                            fontSize: 17, color: Colors.white),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ));
              },
              child: Image.asset('images/questions.png'),
            ),
          ),
        ],
      ),
    );
  }
   _form() {
    return Form(
        child: Column(
      children: [
       
        
        Padding(
         padding: const EdgeInsets.only(left: 24, right: 24),
          child: TextField(
            controller: _emailcontroller,
            
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide.none),
                fillColor: Colors.white,
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Color.fromARGB(255, 97, 94, 245),
                )),
          ),
        ),
         SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide.none),
                fillColor: Colors.white,
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.lock_outline_rounded,
                  color: Color.fromARGB(255, 97, 94, 245),
                )),
          ),
        ),
        
      ],
    ));
  }

   _Have_already_an_account_signin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.all(12.0),
          child: InkWell(
           
          
            child: Text(
            'Have already an account? Sign in',
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
          ),
          ),
        ),
      ],
    );
  }
  
  _signup() {
     return Padding(
       padding: const EdgeInsets.all(8.0),
       child: SizedBox(
          width: 320,
          height: 42,
          child: ElevatedButton(
            onPressed: registeration,
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 33, 89, 243)),
            child: Text(
              'SignUp',
              style: TextStyle(fontSize: 15),
            ),
          )),
     );
  }
  

  

Future registeration() async {
  
  if(_emailcontroller.text.isEmpty){
    return showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: Text('enter you email'),
      );
      
    });

  }else if(_passwordController.text.isEmpty){
    return showDialog(context: context, builder: (BuildContext  context) {
      return AlertDialog(
        title: Text('enter-password'),
      );
      
    });

  }else {
    final User =  await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailcontroller.text, password: _passwordController.text);


    
    final currenUser = FirebaseAuth.instance.currentUser;
    assert(User.user!.uid == currenUser!.uid);

        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) {
          return bottomnavbar();
        }), (route) => false);
    
  }

  }
}

