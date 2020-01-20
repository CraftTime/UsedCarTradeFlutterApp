import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:used_car/model/home_car_data.dart';
import 'package:used_car/model/home_car_recommend_data.dart';
import 'package:used_car/model/home_type_data.dart';
import 'package:used_car/pages/home/car_detail.dart';
import 'package:used_car/pages/home/home_car_brand_item.dart';
import 'package:used_car/pages/home/home_car_favor_item.dart';
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
  List<Brand> _brandList = BrandList.loadBrand();

  double _searchOpacity = 0;
  double _bounceOpacity = 1;
  ScrollController _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = new ScrollController();
    _scrollController.addListener(() {
      double offset = _scrollController.position.pixels.toDouble()/MediaQuery.of(context).devicePixelRatio;
      if (offset >= 35) {
        setState(() {
          _searchOpacity = 1;
          _bounceOpacity = 1;
        });
      } else if (offset <= -35) {
        setState(() {
          _searchOpacity = 0;
          _bounceOpacity = 0;
        });
      }else if(offset<0){
        setState(() {
          _searchOpacity = 0;
          _bounceOpacity = 1+offset/35;
        });
      } else if (offset == 0) {
        setState(() {
          _searchOpacity = 0;
          _bounceOpacity = 1;
        });
      } else {
        setState(() {
          _bounceOpacity = 1;
          _searchOpacity = offset / 35;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: <Widget>[
              SliverSafeArea(
                top: false,
                bottom: false,
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
                        height: MediaQuery.of(context).size.width / 5 * 2 + 30,
                        child: new Swiper.children(
                          children: <Widget>[
                            GridView.count(
                              padding: EdgeInsets.only(top: 8),
                              crossAxisCount: 5,
                              mainAxisSpacing: 0,
                              crossAxisSpacing: 0,
                              children: _homeType1List
                                  .map((item) => HomeTypeItem(
                                        homeType: item,
                                      ))
                                  .toList(),
                              physics: NeverScrollableScrollPhysics(),
                              childAspectRatio: 1,
                            ),
                            GridView.count(
                              padding: EdgeInsets.only(top: 8),
                              crossAxisCount: 5,
                              mainAxisSpacing: 0,
                              crossAxisSpacing: 0,
                              children: _homeType2List
                                  .map((item) => HomeTypeItem(
                                        homeType: item,
                                      ))
                                  .toList(),
                              physics: NeverScrollableScrollPhysics(),
                              childAspectRatio: 1,
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
                        height: 70,
                        padding:
                            EdgeInsets.only(top: 15, bottom: 10, right: 10),
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: _carList.length,
                            itemBuilder: (context, index) {
                              if (index < _carList.length) {
                                return  GestureDetector(
                                  behavior: HitTestBehavior.opaque, child: HomeFavorCarItem(
                                  car: _carList[index],
                                  isLast: index == _carList.length - 1,
                                ),onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => CarDetail(),),);
                                },);
                              }
                              return null;
                            }),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 10),
                        color: Color.fromRGBO(245, 245, 246, 1),
                        height: 1,
                      ),
                      Container(
                        height:
                            (MediaQuery.of(context).size.width - 20 - 15) / 4 +
                                10,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: GridView.count(
                          padding: EdgeInsets.all(0),
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 4,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 5.0,
                          childAspectRatio: 3,
                          children: _brandList
                              .map((item) => HomeCarBrandItem(
                                    brand: item,
                                  ))
                              .toList(),
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
                                height:
                                    (MediaQuery.of(context).size.width - 23) /
                                            1059 *
                                            297 *
                                            2 +
                                        3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 1,
                                      child: Image.asset(
                                        'images/car_width1.png',
                                        width:
                                            (MediaQuery.of(context).size.width -
                                                    23) /
                                                2,
                                        height: ((MediaQuery.of(context)
                                                            .size
                                                            .width -
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
                                        width:
                                            (MediaQuery.of(context).size.width -
                                                    23) /
                                                2,
                                        height: ((MediaQuery.of(context)
                                                            .size
                                                            .width -
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
                                height:
                                    (MediaQuery.of(context).size.width - 23) /
                                            1059 *
                                            297 *
                                            2 +
                                        3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 1,
                                      child: Image.asset(
                                        'images/car_width1.png',
                                        width:
                                            (MediaQuery.of(context).size.width -
                                                    23) /
                                                2,
                                        height: ((MediaQuery.of(context)
                                                            .size
                                                            .width -
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
                                        width:
                                            (MediaQuery.of(context).size.width -
                                                    23) /
                                                2,
                                        height: ((MediaQuery.of(context)
                                                            .size
                                                            .width -
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
                                height:
                                    (MediaQuery.of(context).size.width - 23) /
                                            1059 *
                                            297 *
                                            2 +
                                        3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 1,
                                      child: Image.asset(
                                        'images/car_width1.png',
                                        width:
                                            (MediaQuery.of(context).size.width -
                                                    23) /
                                                2,
                                        height: ((MediaQuery.of(context)
                                                            .size
                                                            .width -
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
                                        width:
                                            (MediaQuery.of(context).size.width -
                                                    23) /
                                                2,
                                        height: ((MediaQuery.of(context)
                                                            .size
                                                            .width -
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
                      .map((item) =>
                      GestureDetector(
                        behavior: HitTestBehavior.opaque, child: HomeCarItem(
                        car: item,
                      ),onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => CarDetail(),),);
                      },),)
                      .toList(),
                ),
              ),
            ],
            controller: _scrollController,
          ),
          Opacity(
            opacity: _bounceOpacity,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              color: Color.fromRGBO(255, 255, 255, _searchOpacity),
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
                        color: _searchOpacity > 0.7
                            ? Color.fromRGBO(36, 41, 50, 1)
                            : Color.fromRGBO(255, 255, 255, 1),
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
                      color: Colors.white,
                      colorBlendMode: _searchOpacity > 0.7
                          ? BlendMode.dst
                          : BlendMode.srcIn,
                    ),
                    Expanded(
                      child: Container(
                        height: 35,
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: _searchOpacity > 0.7
                              ? Color.fromRGBO(233, 237, 246, 1)
                              : Color.fromRGBO(255, 255, 255, 1),
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
                      'images/ic_custom_service.png',
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                      color: Colors.white,
                      colorBlendMode: _searchOpacity > 0.7
                          ? BlendMode.dst
                          : BlendMode.srcIn,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
