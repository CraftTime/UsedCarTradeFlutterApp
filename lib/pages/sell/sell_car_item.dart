import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:used_car/model/sell_car_data.dart';

class SellCarItem extends StatelessWidget {
  final Car car;

  const SellCarItem({Key key, this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                car.man,
                style: TextStyle(
                    color: Color.fromRGBO(99, 103, 104, 1), fontSize: 12),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                height: 15,
                width: 1,
                color: Color.fromRGBO(240, 241, 241, 1),
              ),
              Text(
                car.city,
                style: TextStyle(
                    color: Color.fromRGBO(99, 103, 104, 1), fontSize: 12),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Text(
                  car.status,
                  style: TextStyle(
                      color: Color.fromRGBO(158, 159, 164, 1), fontSize: 12),
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  car.img,
                  width: 120,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Container(
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        car.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 14, color: Color.fromRGBO(42, 43, 44, 1)),
                      ),
                      RichText(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          text: '瓜子价',
                          children: <TextSpan>[
                            TextSpan(
                              text: car.price,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(226, 108, 91, 1),
                              ),
                            ),

                            TextSpan(
                              text: ' 高于市场价12.4%',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(151, 153, 155, 1),
                              ),
                            ),
                          ],
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(151, 153, 155, 1),
                          ),
                        ),
                      ),

                      RichText(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          text: '市场价',
                          children: <TextSpan>[
                            TextSpan(
                              text: car.marketPrice,
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                decorationStyle: TextDecorationStyle.solid,
                                decorationColor: Color.fromRGBO(118, 119, 123, 1),
                                decorationThickness: 2,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(90, 91, 95, 1),
                              ),
                            ),
                          ],
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            decorationStyle: TextDecorationStyle.solid,
                            decorationColor: Color.fromRGBO(163, 167, 173, 1),
                            decorationThickness: 2,
                            fontSize: 12,
                            color: Color.fromRGBO(151, 153, 155, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
