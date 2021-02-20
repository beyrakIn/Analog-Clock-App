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
      leading: IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
      actions: [Container(
        child: IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
      )],
    );
  }
}
