import 'package:flutter/material.dart';

class MySilverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 10.0),
        child: Scaffold(
            body: CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    expandedHeight: 200.0,
                    floating: true,
                    pinned: true,
                    snap: true,
                    leading: IconButton(
                      icon: Icon(Icons.dehaze),
                      onPressed: (){
                        debugPrint('Menubar Pressed');
                      },
                    ),
                    actions: <Widget>[
                      IconButton(
                          icon: Icon(Icons.search),
                          onPressed: (){
                            debugPrint('Perform Search Operation');
                          },
                        ),
                    ],
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text('Silver Appbar'),
                      background: Image.network("https://dwglogo.com/wp-content/uploads/2018/03/Dart_logo.png",fit: BoxFit.fill,),
                    ),
                  ),
                  SliverFillRemaining(
                    child: Center(child: Text('Hello There',style: TextStyle(fontSize: 50.0),),),
                  ),
                ],
              ),
            ),
      );
  }
}

