import 'package:flutter/material.dart';

import 'package:car_shop/models/Products.dart';

import './card.dart';

class RoomBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mSize = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Show Room",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: "century"),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: SizedBox(
                    height: mSize,
                    child: GridView.builder(
                      itemCount: products.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                      ),
                      itemBuilder: (context, index) {
                        return RoomCard(
                          product: products[index],
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
