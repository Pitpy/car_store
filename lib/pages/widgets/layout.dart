import 'package:flutter/material.dart';

import './banner.dart';
import './go_showroom.dart';
import './top_deals.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeadBan(),
          GoShow(),
          TopDeals(),
        ],
      ),
    );
  }
}
