import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:used_car/model/buy_car_data.dart';

class BuyCarItem extends StatelessWidget {
  final Car car;

  const BuyCarItem({Key key, this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: Image.asset(
                  car.img,
                  width: 150,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        car.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 15, color: Color.fromRGBO(42, 43, 44, 1)),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              car.detail,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromRGBO(176, 178, 179, 1)),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                            constraints: BoxConstraints(maxWidth: 60),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromRGBO(63, 176, 126, 1),
                                ),
                                borderRadius: BorderRadius.circular(3)),
                            child: Text(
                              '准新车',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromRGBO(15, 194, 112, 1)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: RichText(
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                text: TextSpan(
                                  text: car.price,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(255, 92, 58, 1),
                                  ),
                                  children: <TextSpan>[TextSpan(
                                    text: ' 首付${car.prePrice}',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(255, 92, 58, 1),
                                    ),
                                  )],
                                )),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'images/icon_gouwunormal.png',
                            width: 18,
                            height: 18,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          color: Color.fromRGBO(240, 241, 241, 1),
        ),
      ],
    );
  }
}
