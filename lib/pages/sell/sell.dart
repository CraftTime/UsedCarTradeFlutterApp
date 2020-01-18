import 'package:flutter/material.dart';
import 'package:used_car/model/sell_car_brand_data.dart';
import 'package:used_car/model/sell_car_data.dart';
import 'package:used_car/pages/sell/sell_car_brand_item.dart';
import 'package:used_car/pages/sell/sell_car_item.dart';

class Sell extends StatefulWidget {
  @override
  _SellState createState() => _SellState();
}

class _SellState extends State<Sell> {
  double _headOpacity = 0;
  ScrollController _scrollController;

  List<Car> _carList = CarList.loadCar();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = new ScrollController();
    _scrollController.addListener(() {
      double offset = _scrollController.position.pixels.toDouble() /
          MediaQuery.of(context).devicePixelRatio;
      if (offset >= 35) {
        setState(() {
          _headOpacity = 1;
        });
      } else if (offset <= 0) {
        setState(() {
          _headOpacity = 0;
        });
      } else {
        setState(() {
          _headOpacity = offset / 35;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Brand> _brandList = BrandList.loadBrand();

    return new Scaffold(
      backgroundColor: Color.fromRGBO(237, 243, 247, 1),
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: <Widget>[
              SliverSafeArea(
                top: false,
                sliver: SliverToBoxAdapter(
                  child: Stack(
                    children: <Widget>[
                      Image.asset(
                        'images/img_sell_bg.jpg',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fitWidth,
                        color: Color.fromRGBO(237, 243, 244, 1),
                        colorBlendMode: BlendMode.darken,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.width / 750 * 415,
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width / 750 * 140,
                            left: 15,
                            right:
                                MediaQuery.of(context).size.width / 750 * 270),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '高价卖车 省心无忧\n当天立拿车款',
                              style: TextStyle(
                                fontSize: 25,
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(255, 255, 255, 0.9),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '一键预约',
                                  style: TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 2,
                                    color: Color.fromRGBO(255, 255, 255, 0.8),
                                  ),
                                ),
                                Text(
                                  '免费检测',
                                  style: TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 2,
                                    color: Color.fromRGBO(255, 255, 255, 0.8),
                                  ),
                                ),
                                Text(
                                  '当天上架',
                                  style: TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 2,
                                    color: Color.fromRGBO(255, 255, 255, 0.8),
                                  ),
                                ),
                                Text(
                                  '签约过户',
                                  style: TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 2,
                                    color: Color.fromRGBO(255, 255, 255, 0.8),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width / 750 * 415,
                            left: 15,
                            right: 15),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                '选择车型',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(45, 52, 58, 1),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                height:
                                    (MediaQuery.of(context).size.width - 72) /
                                            5 *
                                            2 +
                                        3,
                                child: GridView.count(
                                  padding: EdgeInsets.all(0),
                                  physics: NeverScrollableScrollPhysics(),
                                  crossAxisCount: 5,
                                  crossAxisSpacing: 3.0,
                                  mainAxisSpacing: 3.0,
                                  childAspectRatio: 1,
                                  children: _brandList
                                      .map((item) => SellCarBrandItem(
                                            brand: item,
                                          ))
                                      .toList(),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          '上牌时间',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                161, 167, 172, 1),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                '请选择上牌时间',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(
                                                      89, 95, 100, 1),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Image.asset(
                                              'images/icon_more_jump.png',
                                              width: 10,
                                              height: 10,
                                              fit: BoxFit.cover,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    flex: 1,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 1,
                                    height: 30,
                                    color: Color.fromRGBO(242, 244, 245, 1),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          '行驶里程',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                161, 167, 172, 1),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                '请选择行驶里程',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(
                                                      89, 95, 100, 1),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Image.asset(
                                              'images/icon_more_jump.png',
                                              width: 10,
                                              height: 10,
                                              fit: BoxFit.cover,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    flex: 1,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: MaterialButton(
                                      color: Color.fromRGBO(33, 159, 44, 1),
                                      textColor: Colors.white,
                                      child: Text(
                                        '高价卖车',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 12),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      onPressed: () {},
                                      elevation: 1,
                                    ),
                                    flex: 2,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      color: Color.fromRGBO(239, 245, 249, 1),
                                      textColor: Color.fromRGBO(93, 99, 106, 1),
                                      child: Text(
                                        '爱车估价',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 12),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      onPressed: () {},
                                      elevation: 1,
                                    ),
                                    flex: 1,
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
              ),
              SliverPadding(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '瓜子报价优势',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(45, 52, 58, 1),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'images/img_location.png',
                                    width: 20,
                                    height: 20,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '厦门',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(156, 163, 171, 1),
                                    ),
                                  )
                                ],
                              ),
                              flex: 1,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              height: 20,
                              width: 1,
                              color: Color.fromRGBO(240, 241, 241, 1),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  RichText(
                                    text: TextSpan(
                                      text: '2159',
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '辆',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color:
                                                Color.fromRGBO(34, 41, 52, 1),
                                          ),
                                        ),
                                      ],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Color.fromRGBO(34, 41, 52, 1),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '当前在售',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(156, 163, 171, 1),
                                    ),
                                  )
                                ],
                              ),
                              flex: 1,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  RichText(
                                    text: TextSpan(
                                      text: '3209',
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '辆',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color:
                                                Color.fromRGBO(34, 41, 52, 1),
                                          ),
                                        ),
                                      ],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Color.fromRGBO(34, 41, 52, 1),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '厦门',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(156, 163, 171, 1),
                                    ),
                                  )
                                ],
                              ),
                              flex: 1,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    if (index < _carList.length) {
                      return SellCarItem(
                        car: _carList[index],
                      );
                    }
                    return null;
                  }, childCount: _carList.length),
                ),
              ),
              SliverPadding(
                padding:
                    EdgeInsets.only(top: 5, left: 15, right: 15, bottom: 15),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '瓜子卖车优势',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(45, 52, 58, 1),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        height: 205,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Image.asset(
                                        'images/img_sell_advance1.png',
                                        height: 200,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          '价格高',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(40, 46, 49, 1),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          '大数据精准定价\n价格高于市场价5%',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                141, 143, 145, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              flex: 1,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Stack(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Image.asset(
                                              'images/img_sell_advance2.png',
                                              height: 100,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                '拿钱快',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromRGBO(
                                                      40, 46, 49, 1),
                                                ),
                                              ),
                                              Text(
                                                '签约立拿\n50%车款',
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                      141, 143, 145, 1),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    flex: 1,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Stack(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Image.asset(
                                              'images/img_sell_advance3.png',
                                              height: 100,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                '专业服务',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromRGBO(
                                                      40, 46, 49, 1),
                                                ),
                                              ),
                                              Text(
                                                '国家认证\n检测标准',
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                      141, 143, 145, 1),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    flex: 1,
                                  )
                                ],
                              ),
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            controller: _scrollController,
          ),
          Opacity(
            opacity: _headOpacity,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              color: Color.fromRGBO(255, 255, 255, 1),
              child: SafeArea(
                child: Container(
                  height: 35,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        child: Text(
                          '我要卖车',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(36, 42, 48, 1),
                          ),
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          'images/ic_custom_service.png',
                          width: 20,
                          height: 20,
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
