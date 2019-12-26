import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Image.network("https://dwglogo.com/wp-content/uploads/2018/03/Dart_logo.png"),
    );
  }
}