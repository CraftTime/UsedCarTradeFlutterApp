import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:used_car/model/car_eval_data.dart';

class CarValueItem extends StatelessWidget {
  final CarValue carValue;

  const CarValueItem({Key key, this.carValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(244, 244, 244, 1),
                offset: Offset(0, 10),
                blurRadius: 10,
                spreadRadius: 2),
          ],
        ),
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      topLeft: Radius.circular(8)),
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color.fromRGBO(137, 225, 138, 1),
                      Color.fromRGBO(103, 216, 133, 1),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '估值范围',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(255, 255, 255, 0.7),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      carValue.priceRange,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                  color: Colors.white,
                ),
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '外观',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color.fromRGBO(175, 176, 178, 1),
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            carValue.outside,
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color.fromRGBO(79, 80, 81, 1),
                                fontSize: 14),
                          ),
                        ],
                      ),
                      flex: 1,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '内饰',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color.fromRGBO(175, 176, 178, 1),
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            carValue.inside,
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color.fromRGBO(79, 80, 81, 1),
                                fontSize: 14),
                          ),
                        ],
                      ),
                      flex: 1,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '里程',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color.fromRGBO(175, 176, 178, 1),
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            carValue.long,
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color.fromRGBO(79, 80, 81, 1),
                                fontSize: 14),
                          ),
                        ],
                      ),
                      flex: 1,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '故障维修',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color.fromRGBO(175, 176, 178, 1),
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            carValue.question,
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color.fromRGBO(79, 80, 81, 1),
                                fontSize: 14),
                          ),
                        ],
                      ),
                      flex: 1,
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
