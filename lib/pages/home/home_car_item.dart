import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:used_car/model/home_car_data.dart';

class HomeCarItem extends StatelessWidget {
  final Car car;

  const HomeCarItem({Key key, this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      clipBehavior: Clip.antiAlias,
//      shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.all(Radius.circular(5))),
      elevation: 2,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Image.asset(
                  car.img,
                  fit: BoxFit.fitWidth,
                  width: (MediaQuery.of(context).size.width - 25) / 2,
                ),
                Positioned(
                  bottom: 0,
                  width: (MediaQuery.of(context).size.width - 25) / 2,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    child: Text(
                      '${car.focusNum + "人关注"}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10,top: 10,),
            child: Text(
              car.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(33, 40, 49, 1),
                fontSize: 14,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 0,),
            child: Text(
              car.detail,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:10,horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Text(
                    car.price,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(255, 91, 71, 1),
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                    color: Color.fromRGBO(208, 243, 220, 1),
                    child: Text(
                      '找相似',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 171, 61, 1),
                        fontSize: 10,
                      ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
