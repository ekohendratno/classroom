import 'package:classroom/main_drawer.dart';
import 'package:classroom/utils/grouped_list.dart';
import 'package:flutter/material.dart';

class RoomUsers extends StatefulWidget {
  @override
  _RoomUsersState createState() => _RoomUsersState();
}

List _elements = [
  {
    'topic': 'Eko Hendratno',
    'avatar': 'asset/images/saya.jpg',
    'group': 'Pengajar'
  },
  {
    'topic': 'Achmad Rizki',
    'avatar': 'asset/images/saya.jpg',
    'group': 'Siswa'
  },
  {
    'topic': 'Reza Kurniawan',
    'avatar': 'asset/images/saya.jpg',
    'group': 'Siswa'
  },
];

class _RoomUsersState extends State<RoomUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text("XI.TKJ.1"),
        elevation: 1,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.sort,
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
      body: Container(
        child: GroupedListView<dynamic, String>(
            groupBy: (element) => element['group'],
            elements: _elements,
            order: GroupedListOrder.ASC,
            groupSeparatorBuilder: (String value) => Column(
                  children: [
                    ListTile(
                        title: Text(value), //element['gr
                        trailing: IconButton(
                          icon: Icon(Icons.add_circle_outline),
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 16),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                        color: Color(0xFFdddddd),
                        width: 1,
                      ))),
                    )
                  ],
                ),
            itemBuilder: (c, element) {
              return Container(
                  child: ListTile(
                      onTap: () {},
                      leading: ClipOval(
                        child: Image.asset(
                          element['avatar'],
                          width: 40.0,
                          height: 40.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                      title: Text(
                          element['topic']), //element['group'] grou p name get
                      trailing: PopupMenuButton<int>(
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            value: 1,
                            child: Text("Edit"),
                          ),
                          PopupMenuItem(
                            value: 2,
                            child: Text("Hapus"),
                          ),
                        ],
                      )));
            }),
      ),
    );
  }
}
