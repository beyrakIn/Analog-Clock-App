import 'package:clock/screens/home/components/body.dart';
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
      leading: IconButton(
          icon: Icon(Icons.more_vert), onPressed: () {}),
      actions: [
        Container(
          child: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {}),
        )
      ],
    );
  }
}
