import 'package:car_shop/models/Products.dart';
import 'package:car_shop/variables.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key key, this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    var mSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: back_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: product.color,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(
            context,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: mSize.height / 3,
            child: Stack(
              children: <Widget>[
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    decoration: BoxDecoration(
                      color: product.color,
                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  child: Text(
                    product.name,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Positioned(
                  right: 16,
                  top: 50,
                  child: SizedBox(
                    width: mSize.width / 1.2,
                    child: Hero(
                      tag: product.id,
                      child: Image.asset(
                        product.image,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(500),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 16),
                        child: Text(
                          "Detail",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: SizedBox(
                          width: 180,
                          child: Image.asset(
                            "assets/images/engine.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: SizedBox(
                          width: mSize.width / 3,
                          child: RichText(
                            text: TextSpan(text: dummyText),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;
    path.moveTo(0, sh);
    path.lineTo(0, 0);
    path.lineTo(0, 0);
    path.lineTo(sw, 0);
    path.lineTo(0, sh);
    path.close();
    return path;
  }

  bool shouldReclip(MyClipper oldClipper) => false;
}
