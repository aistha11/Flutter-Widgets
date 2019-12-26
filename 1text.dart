
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
          
          body: MyText(),
          ),
    );
  }

}
*/
class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueAccent,
      child: Center(
        child: Text(
          "Hello Flutter",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.white,
            fontSize: 40.0,
          ),
        ),
      ),
    );
  }
}

