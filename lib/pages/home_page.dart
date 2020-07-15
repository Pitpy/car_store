import 'package:flutter/material.dart';
import './widgets/header.dart';
import './widgets/layout.dart';
import '../variables.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: back_color,
      appBar: PreferredSize(
        child: Header(),
        preferredSize: Size.fromHeight(100),
      ),
      body: Layout(),
    );
  }
}
