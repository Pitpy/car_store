import 'package:flutter/material.dart';

import './widgets/ShowRoom/body.dart';

import '../variables.dart';

class ShowRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: back_color,
      appBar: buildAppBar(context),
      body: RoomBody(),
    );
  }
}

AppBar buildAppBar(var context) {
  return AppBar(
    backgroundColor: back_color,
    elevation: 0,
    leading: Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: SizedBox(
          width: 40,
          height: 40,
          child: InkWell(
            onTap: () => Navigator.pop(context),
            borderRadius: BorderRadius.all(Radius.circular(12)),
            splashColor: Colors.black12,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                border: Border.all(color: Colors.black12, width: 2),
              ),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black45,
                size: 16,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
