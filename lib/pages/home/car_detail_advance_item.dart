import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:used_car/model/home_car_data.dart';

class CarDetailAdvanceItem extends StatelessWidget {
  final Car car;

  const CarDetailAdvanceItem({Key key, this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 220,
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        elevation: 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              car.img,
              height: 100,
              fit: BoxFit.cover,
              width: 200,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${car.name} ${car.detail}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color.fromRGBO(59, 64, 67, 1),
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      car.price,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(60, 61, 62, 1),
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      car.advance,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color.fromRGBO(233, 88, 66, 1),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
