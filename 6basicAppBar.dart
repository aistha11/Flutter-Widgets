import 'package:flutter/material.dart';

class MyBasicAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
        child: Scaffold(
            appBar: AppBar(
              title: Text('Basic Appbar'),
              leading: IconButton(
                onPressed: () {
                  debugPrint("MenuBar Pressed");
                },
                icon: Icon(Icons.dehaze),
              ),
              elevation: 10.0,
              backgroundColor: Colors.blue,
              actions: <Widget>[
                IconButton(
                  onPressed: () {
                  debugPrint("Get By Bike");
                },
                icon: Icon(Icons.directions_bike),
                ),
                IconButton(
                  icon: Icon(Icons.directions_boat),
                  onPressed: (){
                    debugPrint("Get By Boat");
                  },
                ),
                PopupMenuButton(
                  itemBuilder: (BuildContext context){
                    return [
                      PopupMenuItem(child: Text('Bus'),),
                      PopupMenuItem(child: Text('Train'),)
                    ];
                  },
                ),

              ],
            ),
            
            body: Center(child: Text('Take Direction'),),
            ),
      );
  }
}

