import 'package:flutter/material.dart';

class MyBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Scaffold(
        body: Center(
          child: Text('Take Direction'),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed: () {
                  debugPrint("MenuBar Pressed");
                },
                icon: Icon(Icons.dehaze),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              ),
              IconButton(
                onPressed: () {
                  debugPrint("Get By Bike");
                },
                icon: Icon(Icons.directions_bike),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              ),
              IconButton(
                icon: Icon(Icons.directions_car),
                onPressed: () {
                  debugPrint("Get By Car");
                },
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              ),
              IconButton(
                icon: Icon(Icons.directions_boat),
                onPressed: () {
                  debugPrint("Get By Boat");
                },
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 10.0, 0.0),
              ),
              PopupMenuButton(
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      child: Text('Bus'),
                    ),
                    PopupMenuItem(
                      child: Text('Train'),
                    )
                  ];
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
