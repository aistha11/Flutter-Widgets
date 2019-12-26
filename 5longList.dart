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
            title: Text('Eg: LongListView'),
            leading: IconButton(
              onPressed: () {
                debugPrint("MenuBar Pressed");
              },
              icon: Icon(Icons.dehaze),
            ),
            elevation: 10.0,
            backgroundColor: Colors.blue,
          ),
          
          body: LongListView(),
          floatingActionButton: FloatingActionButton(
              onPressed: (){
                debugPrint("Fab Clicked");
              },
              child: Icon(Icons.add),
              tooltip: 'Add More',
            ),
          ),
    );
  }

}
*/
class LongListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: getLongListView(),
    );
  }
}
//Generating Long List
List<String> getListElements(){
  var items = List<String>.generate(100, (counter) => "Item $counter");
  return items;
}

Widget getLongListView(){
  var listItems = getListElements();
  var listView = ListView.builder(
    itemBuilder: (context, index){
      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listItems[index]),
        onTap: (){
          showSnackBar(context, listItems[index]);
        },
        trailing: Icon(Icons.close),
      );
    },
  );
  return listView;
}

// SnackBar
void showSnackBar (BuildContext context, String item){
  var snackBar = SnackBar(
    content: Text('You just tapped $item'),
    action: SnackBarAction(
      label: 'UNDO',
      onPressed: (){
        debugPrint("Performing Undo Operation");
      },
    ),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}