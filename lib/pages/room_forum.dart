import 'package:classroom/main_drawer.dart';
import 'package:flutter/material.dart';

class RoomForum extends StatefulWidget {
  @override
  _RoomForumState createState() => _RoomForumState();
}

class _RoomForumState extends State<RoomForum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        elevation: 1,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
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
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
            boxRoom(),
            boxRoomComment(),
            boxRoomList(),
          ]),
        ),
      ),
    );
  }

  Container boxRoom() {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFf2f2f2),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("asset/images/img_backtoschool.jpg"),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 16,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "XI.AIJ.1",
                  style: TextStyle(fontSize:24,color: Color(0xFFFFFFFF)),
                ),
                Text(
                  "Administrasi Infrastruktur Jaringan",
                  style: TextStyle(fontSize:16,color: Color(0xFFFFFFFF)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container boxRoomComment() {
    return Container(
      height: 84,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(6),
      child: Card(
        color: Color(0xFFFFFFFF),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              ClipOval(
                child: Container(
                  height: 40,
                  width: 40,
                  color: Color(0xFFcecece),
                  child: Image.asset(
                    'asset/images/saya.jpg',
                    width: 40.0,
                    height: 40.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text("Bagikan dengan kelas..."),
              ),

              SizedBox(
                width: 10,
              ),
              IconButton(icon: Icon(Icons.add_box), onPressed: null),

            ],
          ),
        ),
      ),
    );
  }

  Container boxRoomList(){
    return Container(
        height: 130.0 * 5,
        margin: EdgeInsets.only(bottom: 10),
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(top: 0, bottom: 0),
            scrollDirection: Axis.vertical,
            itemCount: 5,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  //Route route = MaterialPageRoute(builder: (context) => SecondHome());
                  //Navigator.push(context, route);
                },
                child: Container(
                    height: 124,
                    width: MediaQuery.of(context).size.width,
                    margin:
                    EdgeInsets.only(left: 10, right: 10, bottom: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        width: 1, //
                        color: Color(0xFFdddddd)//    <--- border width here
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color(0xFFdddddd),
                                  width: 1,
                                )
                              )
                            ),
                            child: Row(
                              children: [
                                ClipOval(
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    color: Color(0xFFcecece),
                                    child: Icon(Icons.assignment),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Tugas baru: Quiz 1", style: TextStyle(fontSize: 14,),),
                                      Text("Kemarin (Diedit pada 10 Agt)", style: TextStyle(fontSize: 11,),),
                                    ],
                                  ),
                                ),

                                SizedBox(
                                  width: 10,
                                ),
                                PopupMenuButton<int>(
                                  itemBuilder: (context) => [
                                    PopupMenuItem(
                                      value: 1,
                                      child: Text("Edit"),
                                    ),
                                  ],
                                ),

                              ],
                            )
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 15, bottom: 10, left: 10, right: 10),
                          child: Text("Tambahkan komentar kelas", style: TextStyle(fontSize: 11,),),
                        )
                      ],
                    )),
              );
            }));
  }
}
