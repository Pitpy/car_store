import 'package:car_shop/variables.dart';
import 'package:flutter/material.dart';

import 'package:car_shop/models/Products.dart';
import 'package:car_shop/pages/widgets/Detail/detail_page.dart';

class HeadBan extends StatelessWidget {
  HeadBan({Key key, this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Hero(
              tag: products[0].id,
              child: Image.asset(
                'assets/images/mazda3.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        products[0].name.toUpperCase(),
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        products[0].company.toUpperCase(),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          product: products[0],
                        ),
                      ),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 5),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Detail",
                            style:
                                TextStyle(fontSize: 18, color: primary_color),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: primary_color,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
