import 'package:classroom/pages/room1.dart';
import 'package:flutter/material.dart';

class PageRoom extends StatefulWidget {
  @override
  _PageRoomState createState() => _PageRoomState();
}

class _PageRoomState extends State<PageRoom> {

  int selectedIndex = 0;
  List<Widget> widgetOptions = <Widget>[
    Room1(),
    Room1(),
    Room1(),
  ];

  void onTabTapped(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.info_outline,
              color: Color(0xFF000000),
            ),
          ),
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text("Segarkan"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Kirim masukan"),
              ),
            ],
          )
        ],
      ),
      drawer: Drawer(),
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
