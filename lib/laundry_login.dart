import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';




class laundry_app extends StatefulWidget {
  const laundry_app({super.key});

  @override
  State<laundry_app> createState() => _laundry_appState();
}

class _laundry_appState extends State<laundry_app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
          width: double.infinity,
          height: double.infinity,


          decoration: BoxDecoration(

            image: DecorationImage(image:AssetImage('images/bg_login.png'),fit: BoxFit.cover ),
          ),
        child: ListView(
          children: [
            SafeArea(
              
              child: Column(
                
              children: [
              
              _kangaroo_questions_row(),

              SizedBox( height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 10), 
                child: Text('Clean Kangaroo' ,style: TextStyle( fontFamily:'',  color: Colors.white,fontSize:26,fontWeight: FontWeight.bold),),
              ),

              SizedBox(height: 10,),
              _form(),
              SizedBox(height: 10,),

              _forget_password(),
              SizedBox(height: 10,),
              
              _loginbtn(),

              SizedBox(height: 20,),
              Text('OR' ,style: TextStyle(color: Colors.white),),

              SizedBox(height: 25,),


              _sigupWithEmail(),
               SizedBox(height: 10,),

              _Sign_Up_With_Google(),
              SizedBox(height: 20,),

              Text('Terms of Service and Pivacy Policy' ,style: TextStyle(color: Colors.white),textAlign: TextAlign.end,),
               SizedBox(height: 10,),
              
              //  _1browser()
              



              

            



              ],
            )),
          ],
        ),
      ),
    );
  }
  
  //logo_question
  
  _kangaroo_questions_row() {

    return Padding(
      padding: const EdgeInsets.only(top: 50,right: 50),
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset('images/logo.png'),
          SizedBox(width: 60,),
          
          Padding(
            padding: const EdgeInsets.only(bottom: 90),
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context, builder:(Builder)=>AlertDialog(
                      shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
                
                
               
                  content: Container(
                    width: 293,
                    height: 280,
                    child: Column(
                        
                        children: [
                           Image.asset('images/Vector.png'),
                            SizedBox(height: 20,),
                            Text('1.Browse',style: TextStyle(fontWeight: FontWeight.w900, fontSize: 26,fontFamily: 'Rubik',color: Color.fromARGB(255, 9, 63, 164)),),
            Text('Choose your preferred local'),
            
            Container(
              width: 245,
              child: Text('laundry store from dozens of options nearby.View ratings and pricing per item for each store.' ,style: TextStyle(fontSize: 17),)),
            SizedBox(height: 10,),
            SizedBox(
              width: 100,
              height: 50,
              
              child: ElevatedButton(onPressed:() {}, child: Text('next',style: TextStyle(fontSize: 17,color: Colors.white),), style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 25, 61, 243)),)),




                        ],
                      ),
                  ),
                  
                ) );
                
              },
              child: Image.asset('images/questions.png'),
            ),
          ),




        ],
      ),
    );
  }
  
  
  _form() {

    return Form(child: Column(

      children: [

        Padding(
          padding: const EdgeInsets.only(left: 16,right: 16),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(6),borderSide: BorderSide.none),
              
              fillColor: Colors.white,
             
              hintText: 'Email',hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(Icons.email_outlined,color: Color.fromARGB(255, 97, 94, 245),)
            ),
            
          ),
        ),
        SizedBox(height: 5,),
          Padding(
          padding: const EdgeInsets.only(left: 16,right: 16),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(6),
              
              borderSide: BorderSide.none),
              fillColor: Colors.white,
              hintText: 'Password' ,hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(Icons.lock_outline_rounded,color: Color.fromARGB(255, 97, 94, 245),)
            ),
            
          ),
        )

      ],
    ));
  }
  
  _forget_password() {

    return   Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Forget Password?' ,style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),),
              ),
            ],
          );
  }
  
  _loginbtn() {

    return SizedBox(
      width: 340,
      height: 50,
      
      child: ElevatedButton(onPressed:() {}, child: Text('Log in',style: TextStyle(fontSize: 17),), style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 33, 89, 243)),));
  }
  
  _sigupWithEmail() {
     return SizedBox(
      width: 340,
      height: 50,
      
      child: ElevatedButton(onPressed:() {}, child: Text('Sign Up With Email',style: TextStyle(fontSize: 17),), style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 33, 89, 243)),));



  }
  
  _Sign_Up_With_Google() {
     return SizedBox(
      width: 340,
      height: 50,
      
      child: ElevatedButton(onPressed:() {}, child: Text('Sign Up With Email',style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 5, 42, 189)),), style: ElevatedButton.styleFrom(backgroundColor: Colors.white),));




  }
  
 








}





