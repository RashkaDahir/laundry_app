import 'package:flutter/material.dart';


class requestpage extends StatefulWidget {
  const requestpage({super.key});

  @override
  State<requestpage> createState() => _requestpageState();
}

class _requestpageState extends State<requestpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const[

        BottomNavigationBarItem(icon: Icon(Icons.person_outlined),label: 'hshsh'),
        BottomNavigationBarItem(icon: Icon(Icons.r_mobiledata),label: 'hshsh'),
        BottomNavigationBarItem(icon: Icon(Icons.r_mobiledata),label: 'hshsh'),



      ]),
    
      
    );
  }
}


