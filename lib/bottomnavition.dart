import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './profilepage.dart';
import './Requestpage.dart';
import './servicepage.dart';

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
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        backgroundColor: Color.fromARGB(249, 249, 249, 249),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.user,
              size: 20,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.tableCells,
              size: 20,
            ),
            label: 'Requist',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.clock,
              size: 20,
            ),
            label: 'Service',
          ),
        ],
      ),
    );
  }
}