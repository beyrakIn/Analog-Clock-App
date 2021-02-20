import 'package:clock/screens/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
          icon: Icon(Icons.more_vert, color: Colors.black), onPressed: () {}),
      actions: [
        Container(
          child: IconButton(
              icon: Icon(Icons.more_vert, color: Colors.black),
              onPressed: () {}),
        )
      ],
    );
  }
}
