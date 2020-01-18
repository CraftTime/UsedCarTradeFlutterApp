import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:used_car/model/home_car_data.dart';

class HomeFavorCarItem extends StatelessWidget {
  final Car car;
  final bool isLast;

  const HomeFavorCarItem({Key key, this.car, this.isLast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 50,
      width: MediaQuery.of(context).size.width * 0.6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            child: Image.asset(
              car.img,
              height: 50,
              fit: BoxFit.cover,
              width: 75,
            ),
            borderRadius: BorderRadius.all(Radius.circular(2)),
          ),
          
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${car.name} ${car.detail}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color.fromRGBO(59, 65, 72, 1),
                    fontSize: 14,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Flexible(child: Text(
                      car.price,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(247, 139, 107, 1),
                        fontSize: 14,
                      ),
                    ),),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.6-160),
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                      color: Color.fromRGBO(247, 139, 107, 0.1),
                      child: Text(
                        car.favor,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color.fromRGBO(247, 139, 107, 1),
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Opacity(
            opacity: isLast ? 0 : 1,
            child: Container(
              width: 1,
              height: 40,
              color: Color.fromRGBO(242, 244, 244, 1),
            ),
          ),
        ],
      ),
    );
  }
}
