import 'package:flutter/material.dart';
import 'package:used_car/model/home_type_data.dart';

class HomeTypeItem extends StatelessWidget {
  final HomeType homeType;

  const HomeTypeItem({Key key, this.homeType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          homeType.typeImg,
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          homeType.typeName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Color.fromRGBO(62, 66, 69, 1),
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
