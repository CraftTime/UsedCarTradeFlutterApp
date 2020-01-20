import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:used_car/model/car_eval_time_data.dart';

class CarValueTimeItem extends StatefulWidget {
  final CarEvalTime carEvalTime;
  final int isSelectIndex;
  final int index;

  const CarValueTimeItem({Key key, this.carEvalTime,this.isSelectIndex,this.index}) : super(key: key);

  @override
  _CarValueTimeItemState createState() {
    // TODO: implement createState
    return _CarValueTimeItemState();
  }
}

class _CarValueTimeItemState extends State<CarValueTimeItem> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(
          color: widget.isSelectIndex==widget.index?Color.fromRGBO(228, 242, 233, 1):Color.fromRGBO(234, 235, 236, 1),
        ),
        color: widget.isSelectIndex==widget.index?Color.fromRGBO(228, 248, 231, 1):Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            widget.carEvalTime.amPm,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
                color:widget.isSelectIndex==widget.index?Color.fromRGBO(89, 163, 82, 1):Color.fromRGBO(87, 88, 92, 1),
                fontSize: 14),
          ),
          SizedBox(height: 8,),
          Text(
            widget.carEvalTime.timeRange,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
                color:widget.isSelectIndex==widget.index?Color.fromRGBO(89, 163, 82, 1):Color.fromRGBO(87, 88, 92, 1),
                fontSize: 12),
          ),
        ],
      ),
    );
  }
}
