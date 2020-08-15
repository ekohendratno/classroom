import 'package:classroom/main_drawer.dart';
import 'package:classroom/utils/grouped_list.dart';
import 'package:flutter/material.dart';

class RoomTask extends StatefulWidget {
  @override
  _RoomTaskState createState() => _RoomTaskState();
}

List _elements = [
  {'topic': 'Quiz 1', 'group': 'QUIZ'},
  {'topic': 'Quiz 2', 'group': 'QUIZ'},
  {'topic': 'Quiz 3', 'group': 'QUIZ'},
];

class _RoomTaskState extends State<RoomTask> {
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
              order: GroupedListOrder.DESC,
              groupSeparatorBuilder: (String value) => Column(
                    children: [
                      ListTile(
                          onTap: () {},
                          title: Text(value), //element['gr
                          trailing: PopupMenuButton<int>(
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                value: 1,
                                child: Text("Ganti nama topik"),
                              ),
                              PopupMenuItem(
                                value: 2,
                                child: Text("Hapus topik"),
                              ),
                            ],
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
                        leading: ClipOval(
                          child: Container(
                            height: 40,
                            width: 40,
                            color: Color(0xFFcecece),
                            child: Icon(Icons.assignment),
                          ),
                        ),
                        title: Text(element['topic']), //element['group'] grou
                        subtitle: Text("Diposting 10 Agt"), // p name get
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
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFFFFFFFF),
          child: Icon(
            Icons.add,
            color: Color(0xFF000000),
          ),
          onPressed: () {},
        ));
  }
}
