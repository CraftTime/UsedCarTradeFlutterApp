import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:used_car/model/mine_view_data.dart';

class MineViewItem extends StatelessWidget {
  final Car car;

  const MineViewItem({Key key, this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
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
                  constraints: BoxConstraints(minHeight: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            car.name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(42, 43, 44, 1)),
                          ),

                          Text(
                            car.detail,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(176, 178, 179, 1)),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(child: Text(
                            car.newPrice,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 92, 58, 1),
                            ),
                          ),),
                          SizedBox(width: 8,),
                          Text(
                            car.price,
                            style: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(158, 159, 162, 1),
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
        ),
        Container(
          height: 1,
          color: Color.fromRGBO(240, 241, 241, 1),
        ),
      ],
    );

  }
}
