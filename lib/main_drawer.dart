import 'package:classroom/main.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 16,top: 10, bottom: 10),
              child: Text("Ruang Kelas"),
            ),
          ),
          SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[

              ListTile(
                  leading: ClipOval(
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Icon(Icons.home),
                    ),
                  ),
                  title: Text('Kelas'),
                  onTap: () => {
                    HomePage()
                  }
              ),
              ListTile(
                  leading: ClipOval(
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Icon(Icons.calendar_today),
                    ),
                  ),
                  title: Text('Kalender'),
                  onTap: () => {}
              ),

              /**
              Flexible(
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.only(top: 0, bottom: 0),
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: (context, index) {

                      return menuService(icon:Icons.calendar_today,title: "$index",);

                    }),
              ),*/

              ListTile(
                  leading: ClipOval(
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Icon(Icons.archive),
                    ),
                  ),
                  title: Text('Kelas yang di arsipkan'),
                  onTap: () => {}
              ),
              ListTile(
                  leading: ClipOval(
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Icon(Icons.folder_open),
                    ),
                  ),
                  title: Text('Folder kelas'),
                  onTap: () => {}
              ),
              ListTile(
                  leading: ClipOval(
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Icon(Icons.settings),
                    ),
                  ),
                  title: Text('Pengaturan'),
                  onTap: () => {}
              ),
              ListTile(
                  leading: ClipOval(
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Icon(Icons.help_outline),
                    ),
                  ),
                  title: Text('Bantuan'),
                  onTap: () => {}
              ),
              ListTile(
                  leading: ClipOval(
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Icon(Icons.lock_outline),
                    ),
                  ),
                  title: Text('Kebijakan privasi'),
                  onTap: () => {}
              ),
              ListTile(
                  leading: ClipOval(
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Icon(Icons.assignment),
                    ),
                  ),
                  title: Text('Persyaratan layanan'),
                  onTap: () => {}
              ),

            ]),
          ),
        ],
      ),
    );
  }

}


class menuService extends StatelessWidget {
  IconData icon;
  String title;
  Widget onTap;

  menuService({this.icon,this.title,this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
            MaterialPageRoute(builder: (_){ return onTap; })
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 16,top: 10, bottom: 10),
          child: Row(
            children: [
              Icon(icon),
              SizedBox(width: 10,),
              Text(title,)
            ],
          ),
        ),
      ),
    );
  }
}

