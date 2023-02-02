import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './profilepage.dart';
import './Requestpage.dart';
import './servicepage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
   List pageList = [
    const profilepage(),
    const requestpage(),
    const servicepage(),
  ];
  // String currentPage;
  int _selectedIndex = 1;
  void onItemTapped(int index) {
    setState(() {
      // currentPage =pageList[0];
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[_selectedIndex],
       bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffF9F9F9F0),
        
          
          selectedItemColor: Color(0xff3D5AF1),
          
          onTap: onItemTapped,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: _selectedIndex == 0
                    ? SvgPicture.asset('images/userselecting.svg')
                    : SvgPicture.asset('images/user.svg',),
                label: 'Profile'),
            BottomNavigationBarItem(
                icon: _selectedIndex == 1
                    ? SvgPicture.asset('images/reqselecting.svg'):SvgPicture.asset('images/req.svg'),
                label: 'Request'),
            BottomNavigationBarItem(
                icon: _selectedIndex == 2
                    ? SvgPicture.asset('images/clockselecting.svg')
                    : SvgPicture.asset('images/clock.svg'),
                label: 'Services'),
          ]),
    );
  }
}