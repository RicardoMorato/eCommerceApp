import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Products.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                color: products[0].color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(products[0].image),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text(
            products[0].title,
            style: TextStyle(color: kTextLightColor),
          ),
        ),
        Text(
          '\$234',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
