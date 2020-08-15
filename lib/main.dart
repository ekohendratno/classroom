import 'package:classroom/constants/color_constant.dart';
import 'package:classroom/main_drawer.dart';
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
      title: 'Ruang Kelas',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: mColorPrimary,
        accentColor: mAccentColor,
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
        title: Text("Ruang Kelas"),
        actions: [
          CircleAvatar(
            child: ClipOval(
              child: Image.asset(
                'asset/images/saya.jpg',
                width: 40.0,
                height: 40.0,
                fit: BoxFit.contain,
              ),
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
      drawer: MainDrawer(),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFFFFFFF),
        child: Icon(Icons.add, color: Color(0xFF000000),),
        onPressed: (){
          _settingModalBottomSheet(context);
        },
      ),
    );
  }
}

void _settingModalBottomSheet(context){
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: new Wrap(
            children: <Widget>[
              new ListTile(
                  title: new Text('Buat kelas'),
                  onTap: () => {}
              ),
              new ListTile(
                title: new Text('Gabung ke kelas'),
                onTap: () => {},
              ),
            ],
          ),
        );
      }
  );
}