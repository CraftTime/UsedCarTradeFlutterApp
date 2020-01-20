import 'package:flutter/material.dart';
import 'package:used_car/model/buy_car_data.dart';
import 'package:used_car/pages/buy/buy_car_item.dart';
import 'package:used_car/pages/home/car_detail.dart';

class BuyList extends StatefulWidget {
  @override
  _BuyListState createState() => _BuyListState();
}

class _BuyListState extends State<BuyList> {
  bool _isFirstType = true;
  bool _isSecondType = false;
  bool _isThirdType = false;
  bool _isForthType = false;
  List<Car> _carList = CarList.loadCar();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            color: Color.fromRGBO(255, 255, 255, 1),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '厦门',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromRGBO(36, 41, 50, 1),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'images/ic_arrow_down.png',
                    width: 10,
                    height: 10,
                    fit: BoxFit.cover,
                  ),
                  Expanded(
                    child: Container(
                      height: 35,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(233, 237, 246, 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              '7-12万 白色专场',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Color.fromRGBO(192, 199, 208, 1),
                              ),
                            ),
                          ),
                          Image.asset(
                            'images/ic_search_b.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    'images/common_gouwuche.png',
                    width: 20,
                    height: 20,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          '智能排序',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 13,
                            color: Color.fromRGBO(53, 54, 55, 1),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'images/ic_drop_down.png',
                        width: 8,
                        height: 8,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          '品牌',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 13,
                            color: Color.fromRGBO(53, 54, 55, 1),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'images/ic_drop_down.png',
                        width: 8,
                        height: 8,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          '价格',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 13,
                            color: Color.fromRGBO(53, 54, 55, 1),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'images/ic_drop_down.png',
                        width: 8,
                        height: 8,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          '筛选',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 13,
                            color: Color.fromRGBO(53, 54, 55, 1),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'images/ic_drop_down.png',
                        width: 8,
                        height: 8,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  flex: 1,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
              left: 10,
              right: 10,
            ),
            child: Row(
              children: <Widget>[
                Flexible(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                      decoration: BoxDecoration(
                        color: _isFirstType
                            ? Color.fromRGBO(208, 243, 220, 1)
                            : Color.fromRGBO(240, 246, 250, 1),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Text(
                        '严选车',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: _isFirstType
                              ? Color.fromRGBO(0, 170, 32, 1)
                              : Color.fromRGBO(92, 97, 103, 1),
                          fontSize: 13,
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _isFirstType = !_isFirstType;
                      });
                    },
                  ),
                  flex: 1,
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                      decoration: BoxDecoration(
                        color: _isSecondType
                            ? Color.fromRGBO(208, 243, 220, 1)
                            : Color.fromRGBO(240, 246, 250, 1),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Text(
                        '全国购',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: _isSecondType
                              ? Color.fromRGBO(0, 170, 32, 1)
                              : Color.fromRGBO(92, 97, 103, 1),
                          fontSize: 13,
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _isSecondType = !_isSecondType;
                      });
                    },
                  ),
                  flex: 1,
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                      decoration: BoxDecoration(
                        color: _isThirdType
                            ? Color.fromRGBO(208, 243, 220, 1)
                            : Color.fromRGBO(240, 246, 250, 1),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Text(
                        '准新车',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: _isThirdType
                              ? Color.fromRGBO(0, 170, 32, 1)
                              : Color.fromRGBO(92, 97, 103, 1),
                          fontSize: 13,
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _isThirdType = !_isThirdType;
                      });
                    },
                  ),
                  flex: 1,
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                      decoration: BoxDecoration(
                        color: _isForthType
                            ? Color.fromRGBO(208, 243, 220, 1)
                            : Color.fromRGBO(240, 246, 250, 1),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Text(
                        '限时秒抢',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: _isForthType
                              ? Color.fromRGBO(0, 170, 32, 1)
                              : Color.fromRGBO(92, 97, 103, 1),
                          fontSize: 13,
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _isForthType = !_isForthType;
                      });
                    },
                  ),
                  flex: 1,
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: Image.asset(
                    'images/img_ad_buy.jpg',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    if (index < _carList.length) {
                      return  GestureDetector(
                        behavior: HitTestBehavior.opaque, child: BuyCarItem(
                        car: _carList[index],
                      ),onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => CarDetail(),),);
                      },);
                    }
                    return null;
                  }, childCount: _carList.length),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
