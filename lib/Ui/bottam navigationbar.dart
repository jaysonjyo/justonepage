import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:justonepage/Ui/HomeScreen.dart';
import 'package:justonepage/Ui/demopages/1.dart';
import 'package:justonepage/Ui/demopages/3.dart';
import 'package:justonepage/Ui/demopages/4.dart';

class Bottamnavigationbar extends StatefulWidget {
  @override
  _BottamnavigationbarState createState() =>
      _BottamnavigationbarState();
}

class _BottamnavigationbarState
    extends State<Bottamnavigationbar> {
  int _selectedIndex = 0;

  // List of screens for each tab
  final List<Widget> _screens = [
    First(),
    Homescreen(),
    Thired(),
    Fourth(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], // Show the current screen
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xFF272341),
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(20),
          //   topRight: Radius.circular(20),
          // ),
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.white,
          items: [
            _buildNavigationBarItem(Icons.grid_view, 'Services', 0),
            _buildNavigationBarItem(Icons.home, 'Home', 1),
            _buildNavigationBarItem(Icons.check_circle_outline, 'Approvals', 2),
            _buildNavigationBarItem(Icons.more_horiz, 'More', 3),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavigationBarItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Column(
        children: [
          Icon(icon),
          if (_selectedIndex == index)
            Container(
              width: 6,
              height: 6,
              margin: EdgeInsets.only(top: 4),
              decoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
      label: label,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Bottamnavigationbar(),
  ));
}
