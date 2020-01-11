import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:used_car/model/home_car_data.dart';
import 'package:used_car/model/home_type_data.dart';
import 'package:used_car/pages/home/home_car_item.dart';
import 'package:used_car/pages/home/home_type_item.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<HomeType> _homeType1List = HomeTypeList.loadType1();
  List<HomeType> _homeType2List = HomeTypeList.loadType2();
  List<Car> _carList = CarList.loadCar();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverSafeArea(
            top: false,
            sliver: SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width / 1125 * 642,
                    child: new Swiper.children(
                      children: <Widget>[
                        new Image.asset(
                          "images/banner1.jpg",
                          fit: BoxFit.cover,
                        ),
                        new Image.asset(
                          "images/banner4.jpg",
                          fit: BoxFit.cover,
                        ),
                        new Image.asset(
                          "images/banner2.png",
                          fit: BoxFit.cover,
                        ),
                        new Image.asset(
                          "images/banner3.jpg",
                          fit: BoxFit.cover,
                        ),
                      ],
                      autoplay: true,
                      pagination: new SwiperPagination(
                        builder: DotSwiperPaginationBuilder(
                            activeColor: Color.fromRGBO(0, 169, 14, 1),
                            color: Colors.white,
                            size: 5,
                            activeSize: 5),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 210,
                    child: new Swiper.children(
                      children: <Widget>[
                        GridView.count(
                          crossAxisCount: 5,
                          mainAxisSpacing: 0,
                          crossAxisSpacing: 0,
                          children: _homeType1List
                              .map((item) => HomeTypeItem(
                                    homeType: item,
                                  ))
                              .toList(),
                          physics: NeverScrollableScrollPhysics(),
                        ),
                        GridView.count(
                          crossAxisCount: 5,
                          mainAxisSpacing: 0,
                          crossAxisSpacing: 0,
                          children: _homeType2List
                              .map((item) => HomeTypeItem(
                                    homeType: item,
                                  ))
                              .toList(),
                          physics: NeverScrollableScrollPhysics(),
                        ),
                      ],
                      pagination: new SwiperPagination(
                        builder: DotSwiperPaginationBuilder(
                            activeColor: Color.fromRGBO(0, 169, 14, 1),
                            color: Color.fromRGBO(0, 0, 0, 0.2),
                            size: 5,
                            activeSize: 5),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    color: Color.fromRGBO(245, 245, 246, 1),
                    height: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          '您感兴趣的车有新优惠了',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color.fromRGBO(79, 85, 88, 1),
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '1小时前更新',
                        style: TextStyle(
                          color: Color.fromRGBO(179, 184, 191, 1),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    color: Color.fromRGBO(245, 245, 246, 1),
                    height: 8,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              top: 5, bottom: 5, left: 10, right: 30),
                          decoration: new BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color.fromRGBO(255, 194, 58, 1),
                                Color.fromRGBO(255, 165, 0, 1),
                              ]),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              )),
                          child: Text(
                            '瓜子严选车',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          alignment: Alignment.center,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Text(
                            '详情',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(177, 182, 185, 1),
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          'images/new_service_assuracne_arrow.png',
                          width: 5,
                          height: 9,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          flex: 426,
                          child: Image.asset(
                            'images/car_height.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Flexible(
                          flex: 633,
                          child: Container(
                            height: (MediaQuery.of(context).size.width - 23) /
                                    1059 *
                                    297 *
                                    2 +
                                3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Flexible(
                                  flex: 1,
                                  child: Image.asset(
                                    'images/car_width1.png',
                                    width: (MediaQuery.of(context).size.width -
                                            23) /
                                        2,
                                    height:
                                        ((MediaQuery.of(context).size.width -
                                                        23) /
                                                    2 /
                                                    426 *
                                                    603 -
                                                3) /
                                            2,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Image.asset(
                                    'images/car_width2.png',
                                    width: (MediaQuery.of(context).size.width -
                                            23) /
                                        2,
                                    height:
                                        ((MediaQuery.of(context).size.width -
                                                        23) /
                                                    2 /
                                                    426 *
                                                    603 -
                                                3) /
                                            2,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    color: Color.fromRGBO(245, 245, 246, 1),
                    height: 8,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              top: 5, bottom: 5, left: 10, right: 30),
                          decoration: new BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color.fromRGBO(255, 130, 53, 1),
                                Color.fromRGBO(255, 86, 0, 1),
                              ]),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              )),
                          child: Text(
                            '毛豆新车',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          alignment: Alignment.center,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Text(
                            '详情',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(177, 182, 185, 1),
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          'images/new_service_assuracne_arrow.png',
                          width: 5,
                          height: 9,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          flex: 426,
                          child: Image.asset(
                            'images/car_height.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Flexible(
                          flex: 633,
                          child: Container(
                            height: (MediaQuery.of(context).size.width - 23) /
                                1059 *
                                297 *
                                2 +
                                3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Flexible(
                                  flex: 1,
                                  child: Image.asset(
                                    'images/car_width1.png',
                                    width: (MediaQuery.of(context).size.width -
                                        23) /
                                        2,
                                    height:
                                    ((MediaQuery.of(context).size.width -
                                        23) /
                                        2 /
                                        426 *
                                        603 -
                                        3) /
                                        2,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Image.asset(
                                    'images/car_width2.png',
                                    width: (MediaQuery.of(context).size.width -
                                        23) /
                                        2,
                                    height:
                                    ((MediaQuery.of(context).size.width -
                                        23) /
                                        2 /
                                        426 *
                                        603 -
                                        3) /
                                        2,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    color: Color.fromRGBO(245, 245, 246, 1),
                    height: 8,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              top: 5, bottom: 5, left: 10, right: 30),
                          decoration: new BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color.fromRGBO(56, 223, 175, 1),
                                Color.fromRGBO(0, 206, 138, 1),
                              ]),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              )),
                          child: Text(
                            '瓜子金融',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          alignment: Alignment.center,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Text(
                            '详情',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(177, 182, 185, 1),
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          'images/new_service_assuracne_arrow.png',
                          width: 5,
                          height: 9,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          flex: 426,
                          child: Image.asset(
                            'images/car_height.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Flexible(
                          flex: 633,
                          child: Container(
                            height: (MediaQuery.of(context).size.width - 23) /
                                1059 *
                                297 *
                                2 +
                                3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Flexible(
                                  flex: 1,
                                  child: Image.asset(
                                    'images/car_width1.png',
                                    width: (MediaQuery.of(context).size.width -
                                        23) /
                                        2,
                                    height:
                                    ((MediaQuery.of(context).size.width -
                                        23) /
                                        2 /
                                        426 *
                                        603 -
                                        3) /
                                        2,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Image.asset(
                                    'images/car_width2.png',
                                    width: (MediaQuery.of(context).size.width -
                                        23) /
                                        2,
                                    height:
                                    ((MediaQuery.of(context).size.width -
                                        23) /
                                        2 /
                                        426 *
                                        603 -
                                        3) /
                                        2,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    color: Color.fromRGBO(245, 245, 246, 1),
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      '为您推荐',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(34, 40, 47, 1),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              childAspectRatio: 0.9,
              children: _carList
                  .map((item) => HomeCarItem(
                        car: item,
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
