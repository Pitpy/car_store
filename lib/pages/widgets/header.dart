import 'package:flutter/material.dart';

import '../../variables.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 30, left: 16, right: 16, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    color: second_color,
                    shape: BoxShape.circle,
                    border: Border.all(color: second_color, width: 3),
                  ),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: back_color, width: 5),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/pitpy.jpg"),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 40,
                  child: Container(
                    decoration: BoxDecoration(
                      color: second_color,
                      border: Border.all(color: back_color, width: 4),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 3),
                      child: Text(
                        "Pitpy BPSS",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.menu,
                color: second_color,
                size: 40,
              ),
              tooltip: 'Increase volume by 10',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
