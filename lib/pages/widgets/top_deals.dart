import 'package:car_shop/models/Products.dart';
import 'package:flutter/material.dart';

import '../show_room.dart';

import '../../variables.dart';
import './card.dart';

class TopDeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "TOP DEALS",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black45,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShowRoom(),
                    ),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "More",
                          style: TextStyle(
                            fontSize: 14,
                            color: primary_color,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: primary_color,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 260,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        product: products[index + 2],
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
