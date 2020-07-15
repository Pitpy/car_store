import 'package:flutter/material.dart';

import 'package:car_shop/models/Products.dart';
import 'package:car_shop/pages/widgets/Detail/detail_page.dart';

class ProductCard extends StatelessWidget {
  ProductCard({Key key, this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      width: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 5,
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Text(
                  product.deal,
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(
                  product: product,
                ),
              ),
            ),
            child: Container(
              width: double.infinity,
              height: 110,
              padding: EdgeInsets.all(16),
              child: Hero(
                tag: product.id,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Expanded(child: SizedBox()),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  product.name,
                  style: TextStyle(fontSize: 19, color: Colors.black54),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  product.price,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 0, 0, 0.8),
                  ),
                ),
                Text(
                  product.company,
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
