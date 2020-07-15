import 'package:flutter/material.dart';
import 'package:car_shop/pages/show_room.dart';

import '../../variables.dart';

class GoShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 45),
        child: Material(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: primary_color,
          child: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ShowRoom(),
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Go To Show Room",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(255, 255, 255, .9),
                        ),
                      ),
                      Container(
                        height: 10,
                      ),
                      Text(
                        "More than services",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(255, 255, 255, .7),
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 30,
                    color: Color.fromRGBO(255, 255, 255, .9),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
