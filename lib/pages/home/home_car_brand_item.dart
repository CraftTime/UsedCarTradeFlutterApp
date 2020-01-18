import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:used_car/model/home_car_recommend_data.dart';

class HomeCarBrandItem extends StatelessWidget {
  final Brand brand;

  const HomeCarBrandItem({Key key, this.brand}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!brand.isBrand) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: Text(
              brand.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(96, 100, 105, 1),
              ),
            ),
          ),
        ],
      );
    } else {
      return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              brand.img,
              width: 18,
              height: 18,
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
                  fontSize: 14,
                  color: Color.fromRGBO(96, 100, 105, 1),
                ),
              ),
            ),
          ],
      );
    }
  }
}
