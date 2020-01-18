import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:used_car/model/sell_car_brand_data.dart';

class SellCarBrandItem extends StatelessWidget {
  final Brand brand;

  const SellCarBrandItem({Key key, this.brand}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          brand.img,
          width: 35,
          height: 35,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 5,
        ),
        Flexible(
          child: Text(
            brand.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 13,
              color: Color.fromRGBO(92, 96, 100, 1),
            ),
          ),
        ),
      ],
    );
  }
}
