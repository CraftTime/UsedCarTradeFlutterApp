import 'package:flutter/material.dart';
import 'package:used_car/model/mine_view_data.dart';
import 'package:used_car/pages/home/car_detail.dart';
import 'package:used_car/pages/mine/view/mine_view_item.dart';

class MineStar extends StatefulWidget {
  @override
  _MineStarState createState() => _MineStarState();
}

class _MineStarState extends State<MineStar> {
  @override
  Widget build(BuildContext context) {
    List<Car> _carList=CarList.loadCar();
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        appBar: AppBar(
          elevation: 1,
          leading: IconButton(
              icon: Image.asset(
                'images/ic_common_header_back.png',
                width: 20,
                height: 20,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          centerTitle: true,
          title: Text(
            '我的收藏',
            style: TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(42, 43, 44, 1),
            ),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            if (index < _carList.length) {
              return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  child: MineViewItem(
                      car: _carList[index]),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => CarDetail(),),);
                  });
            }
            return null;
          },
          itemCount: _carList.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
        ),);
  }
}
