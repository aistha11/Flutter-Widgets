import 'package:flutter/material.dart';
/*
void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: Scaffold(
          appBar: AppBar(
            title: Text('Eg: ListView'),
            leading: IconButton(
              onPressed: () {
                debugPrint("MenuBar Pressed");
              },
              icon: Icon(Icons.dehaze),
            ),
            elevation: 10.0,
            backgroundColor: Colors.blue,
          ),
          
          body: MyListView(),
          ),
    );
  }

}
*/
class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: getListView(),
    );
  }
}
Widget getListView(){
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text('Landscope'),
        subtitle: Text('Beautiful View'),
        trailing: Icon(Icons.wb_sunny),
        onTap: (){
          debugPrint('The Landscape Tapped');
        },
      ),
      ListTile(
        leading: Icon(Icons.people),
        title: Text('People'),
        subtitle: Text('Kind People'),
        trailing: Icon(Icons.people_outline),
        onLongPress: (){
          debugPrint('The People Pressed');
        },
      ),
      ListTile(
        leading: Icon(Icons.access_alarms),
        title: Text('Alarm'),
        subtitle: Text('Noisy'),
        trailing: Icon(Icons.access_alarms),
        onLongPress: (){
          debugPrint('The Alarm Pressed');
        },
      ),
    ],
  );
  return listView;
}

