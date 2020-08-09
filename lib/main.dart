import 'package:classroom/models/data.dart';
import 'package:classroom/pages/room.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Class Room',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        accentColor: Colors.cyan[600],
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text("ClassRoom"),
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text("Gabung ke kelas"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Buat kelas"),
              ),
            ],
            icon: Icon(
              Icons.add,
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
      body: ListView.builder(
        itemCount: kelas.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(16),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_){ return PageRoom(); })
                );
              },
              child: Container(
                height: 172,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFf2f2f2),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(kelas[index].image),
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
                            kelas[index].room,
                            style: TextStyle(fontSize:24,color: Color(0xFFFFFFFF)),
                          ),
                          Text(
                            kelas[index].pelajaran,
                            style: TextStyle(fontSize:16,color: Color(0xFFFFFFFF)),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      child: Text(
                        kelas[index].anggota + " anggota",
                        style: TextStyle(fontSize:11,color: Color(0xFFFFFFFF)),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: PopupMenuButton<int>(
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            value: 1,
                            child: Text("Edit"),
                          ),
                          PopupMenuItem(
                            value: 2,
                            child: Text("Arsipkan"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
