import 'package:classroom/main_drawer.dart';
import 'package:classroom/pages/room_forum.dart';
import 'package:classroom/pages/room_task.dart';
import 'package:classroom/pages/room_users.dart';
import 'package:flutter/material.dart';

class PageRoom extends StatefulWidget {
  @override
  _PageRoomState createState() => _PageRoomState();
}

class _PageRoomState extends State<PageRoom> {

  int selectedIndex = 0;
  List<Widget> widgetOptions = <Widget>[
    RoomForum(),
    RoomTask(),
    RoomUsers(),
  ];

  void onTabTapped(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF8A8A8A),
            ),
          ],
        ),
        child: BottomNavigationBar(
          selectedItemColor: Color(0xFF000000),
          unselectedItemColor: Color(0xFF8A8A8A),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          elevation: 0,
          onTap: onTabTapped,
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: selectedIndex == 0 ? Icon(Icons.message) : Icon(Icons.message),
              title: Text('Forum'),
            ),
            BottomNavigationBarItem(
              icon: selectedIndex == 1 ? Icon(Icons.assignment) : Icon(Icons.assignment),
              title: Text('Tugas Kelas'),
            ),
            BottomNavigationBarItem(
              icon: selectedIndex == 2 ? Icon(Icons.people) : Icon(Icons.people),
              title: Text('Anggota'),
            ),
          ],
        ),
      ),
    );
  }
}