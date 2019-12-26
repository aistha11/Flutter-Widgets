
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
            title: Text('Eg: Buttons'),
            leading: IconButton(
              onPressed: () {
                debugPrint("MenuBar Pressed");
              },
              icon: Icon(Icons.dehaze),
            ),
            elevation: 10.0,
            backgroundColor: Colors.blue,
          ),
          
          body: MyButton(),
          ),
    );
  }

}
*/
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueAccent,
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            color: Colors.lightBlueAccent,
            padding: EdgeInsets.only(left:20.0, top: 35.0,right:15.0,bottom: 25.0),
            child: RaisedButton(
              onPressed: (){
                _onClick(context,'Raised');
              },
              elevation: 5.0,
              child: Text('Raised Button'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.lightBlueAccent,
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              onPressed: (){
                _onClick(context,'Flat');
              },
              child: Text('Flat Buttom'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.lightBlueAccent,
            padding: EdgeInsets.all(15.0),
            child: IconButton(
              onPressed: (){
                _onClick(context,'Icon');
              },
              icon: Icon(Icons.add),
            ),
          ),
          
        ],
      )
    );
  }
  void _onClick (BuildContext context, String btnName){
    var alertDialog = AlertDialog(
      title: Text('Button Clicked'),
      content: Text("$btnName Button is clicked"),
    );
    showDialog(
      context: context,
      builder: (BuildContext context){
        return alertDialog;
      }
    );
  }
}

