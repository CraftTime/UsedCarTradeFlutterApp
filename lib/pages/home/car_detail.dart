import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:used_car/model/home_car_data.dart';
import 'package:used_car/pages/home/car_detail_advance_item.dart';
import 'package:used_car/pages/home/car_detail_car_item.dart';

class CarDetail extends StatefulWidget {
  @override
  _CarDetailState createState() => _CarDetailState();
}

class _CarDetailState extends State<CarDetail> {
  int _showImgIndex = 1;

  void _imagePageChanged(index) {
    setState(() {
      _showImgIndex = index + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _detailImg = <Widget>[
      new Image.asset(
        "images/img_car_detail1.jpg",
        fit: BoxFit.cover,
      ),
      new Image.asset(
        "images/img_car_detail2.jpg",
        fit: BoxFit.cover,
      ),
      new Image.asset(
        "images/img_car_detail3.jpg",
        fit: BoxFit.cover,
      ),
      new Image.asset(
        "images/img_car_detail4.jpg",
        fit: BoxFit.cover,
      ),
      new Image.asset(
        "images/img_car_detail5.jpg",
        fit: BoxFit.cover,
      ),
      new Image.asset(
        "images/img_car_detail6.jpg",
        fit: BoxFit.cover,
      ),
      new Image.asset(
        "images/img_car_detail7.jpg",
        fit: BoxFit.cover,
      ),
      new Image.asset(
        "images/img_car_detail8.jpg",
        fit: BoxFit.cover,
      ),
      new Image.asset(
        "images/img_car_detail9.jpg",
        fit: BoxFit.cover,
      ),
      new Image.asset(
        "images/img_car_detail10.jpg",
        fit: BoxFit.cover,
      ),
    ];

    List<Car> _carList = CarList.loadCar();

    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
        actions: <Widget>[
          IconButton(
              icon: Image.asset(
                'images/icon_header_collection_black.png',
                width: 24,
                height: 24,
              ),
              onPressed: () {}),
          IconButton(
              icon: Image.asset(
                'images/icon_header_more_black.png',
                width: 24,
                height: 24,
              ),
              onPressed: () {}),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: <Widget>[
                SliverSafeArea(
                  top: false,
                  bottom: false,
                  sliver: SliverToBoxAdapter(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width / 750 * 500,
                          child: new Swiper.children(
                            children: _detailImg,
                            onIndexChanged: _imagePageChanged,
                          ),
                        ),
                        Positioned(
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Text(
                              '$_showImgIndex/${_detailImg.length}',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          bottom: 15,
                          right: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(
                    right: 10,
                    left: 10,
                    top: 10,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '全款价',
                          style: TextStyle(
                              fontSize: 11,
                              color: Color.fromRGBO(93, 92, 99, 1)),
                        ),
                        Row(
                          children: <Widget>[
                            Flexible(
                              child: Text(
                                '4.04万',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(38, 36, 48, 1)),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(100),
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color.fromRGBO(242, 122, 61, 1),
                                    Color.fromRGBO(246, 72, 48, 1),
                                  ],
                                ),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '金融专享',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '3.88万',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(251, 237, 232, 1),
                              borderRadius: BorderRadius.circular(2)),
                          child: Row(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color.fromRGBO(243, 238, 222, 1),
                                  ),
                                ),
                                child: Text(
                                  '金融已减1600元',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(251, 90, 56, 1),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '查看',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(251, 90, 56, 1)),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Image.asset(
                                'images/details_listpop_jump.png',
                                width: 10,
                                height: 10,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '东风风行 景逸 XV 2016款 1.6L CVT 舒适型',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(69, 70, 71, 1),
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(237, 242, 252, 1),
                              borderRadius: BorderRadius.circular(2)),
                          child: Text(
                            '0过户',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromRGBO(154, 159, 163, 1)),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            children: <Widget>[
                              Text(
                                '金融',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(236, 123, 69, 1),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  '首付一成 0.39万开回家',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(80, 81, 83, 1)),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Image.asset(
                                'images/new_service_assuracne_arrow.png',
                                width: 8,
                                height: 8,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Color.fromRGBO(242, 248, 252, 1),
                          height: 1,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            children: <Widget>[
                              Text(
                                '服务',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(60, 63, 69, 1),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset(
                                      'images/service_pop_icon.png',
                                      width: 10,
                                      height: 10,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '7天无理由退车',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(80, 81, 83, 1)),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Image.asset(
                                      'images/service_pop_icon.png',
                                      width: 10,
                                      height: 10,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '30天全面保修',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(80, 81, 83, 1)),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Image.asset(
                                'images/new_service_assuracne_arrow.png',
                                width: 8,
                                height: 8,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        color: Color.fromRGBO(242, 248, 252, 1),
                        height: 8,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 10,
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color.fromRGBO(245, 107, 67, 1),
                                    Color.fromRGBO(250, 94, 62, 1),
                                  ],
                                ),
                              ),
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 2),
                              child: Text(
                                '服务',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '服务新升级',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(236, 123, 69, 1)),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    '7天无理由退车',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(108, 111, 114, 1)),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    '30天全面保修',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(108, 111, 114, 1)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              'images/new_service_assuracne_arrow.png',
                              width: 8,
                              height: 8,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color.fromRGBO(242, 248, 252, 1),
                        height: 8,
                      ),
                    ],
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 10,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              '车辆档案',
                              style: TextStyle(
                                color: Color.fromRGBO(47, 49, 54, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Text(
                                '车源号HC-93252594',
                                textAlign: TextAlign.right,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color.fromRGBO(148, 149, 150, 1),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '表显里程',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromRGBO(148, 149, 150, 1),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '5.1万公里',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromRGBO(60, 67, 70, 1),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '上牌时间',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromRGBO(148, 149, 150, 1),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '2016-10',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromRGBO(60, 67, 70, 1),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '变速箱',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromRGBO(148, 149, 150, 1),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '自动',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromRGBO(60, 67, 70, 1),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '排放量',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromRGBO(148, 149, 150, 1),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '1.6L',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromRGBO(60, 67, 70, 1),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '登记证为准',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromRGBO(148, 149, 150, 1),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '0次过户',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromRGBO(60, 67, 70, 1),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '年检到期',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromRGBO(148, 149, 150, 1),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '2020.10',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromRGBO(60, 67, 70, 1),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '交强险到期',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromRGBO(148, 149, 150, 1),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '2010.10',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromRGBO(60, 67, 70, 1),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '准入情况',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromRGBO(148, 149, 150, 1),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Flexible(
                                        child: Text(
                                          '查迁入标准',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(39, 160, 98, 1),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        'images/new_service_assuracne_arrow.png',
                                        width: 8,
                                        height: 8,
                                        fit: BoxFit.cover,
                                        color: Color.fromRGBO(39, 160, 98, 1),
                                        colorBlendMode: BlendMode.srcIn,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '购车方式',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromRGBO(148, 149, 150, 1),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Flexible(
                                        child: Text(
                                          '查询购车步骤',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(39, 160, 98, 1),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        'images/new_service_assuracne_arrow.png',
                                        width: 8,
                                        height: 8,
                                        fit: BoxFit.cover,
                                        color: Color.fromRGBO(39, 160, 98, 1),
                                        colorBlendMode: BlendMode.srcIn,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '新车含税价',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromRGBO(148, 149, 150, 1),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '8.67万',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromRGBO(60, 67, 70, 1),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        color: Color.fromRGBO(242, 248, 252, 1),
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '全部参数配置',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color.fromRGBO(148, 149, 150, 1),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'images/new_service_assuracne_arrow.png',
                              width: 8,
                              height: 8,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color.fromRGBO(242, 248, 252, 1),
                        height: 8,
                      ),
                    ],
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              '二手车严选直卖店',
                              style: TextStyle(
                                color: Color.fromRGBO(47, 49, 54, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Text(
                                '183辆在售车',
                                textAlign: TextAlign.right,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color.fromRGBO(148, 149, 150, 1),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(2),
                              child: Image.asset(
                                'images/img_car_detail6.jpg',
                                width: 120,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Container(
                                height: 80,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '距您8.6km｜福建厦门厦门湖里区高崎北路433-435号乔丹海西中心',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Color.fromRGBO(148, 149, 150, 1),
                                        fontSize: 12,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 5,
                                      ),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(237, 151, 43, 1),
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                      child: Text(
                                        '到店看看',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        color: Color.fromRGBO(242, 248, 252, 1),
                        height: 8,
                        margin: EdgeInsets.only(bottom: 15),
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '东风风行景逸XV',
                            style: TextStyle(
                              color: Color.fromRGBO(47, 49, 54, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '选购指南',
                            style: TextStyle(
                              color: Color.fromRGBO(47, 49, 54, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Text(
                              '每日更新',
                              textAlign: TextAlign.right,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color.fromRGBO(148, 149, 150, 1),
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: 250,
                    child: ListView.builder(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: _carList.length,
                        itemBuilder: (context, index) {
                          if (index < _carList.length) {
                            return GestureDetector(
                              behavior: HitTestBehavior.opaque,
                              child: CarDetailAdvanceItem(
                                car: _carList[index],
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CarDetail(),
                                  ),
                                );
                              },
                            );
                          }
                          return null;
                        }),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        color: Color.fromRGBO(242, 248, 252, 1),
                        height: 8,
                        margin: EdgeInsets.only(bottom: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 15),
                        child: Text(
                          '为您推荐',
                          style: TextStyle(
                            color: Color.fromRGBO(47, 49, 54, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 15),
                  sliver: SliverGrid.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                    childAspectRatio: 0.9,
                    children: _carList
                        .map(
                          (item) => GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            child: CarDetailCarItem(
                              car: item,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CarDetail(),
                                ),
                              );
                            },
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              child: Row(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'images/ic_custom_service.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text('客服',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(128, 130, 132, 1),
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'images/ic_collect_black.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text('收藏',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(128, 130, 132, 1),
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'images/icon_detail_footer_subsidy.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text('领券',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(128, 130, 132, 1),
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: MaterialButton(
                      color: Color.fromRGBO(243, 94, 62, 1),
                      textColor: Colors.white,
                      child: Text(
                        '我要优惠',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      onPressed: () {},
                      elevation: 1,
                    ),
                    flex: 1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: MaterialButton(
                      color: Color.fromRGBO(59, 160, 53, 1),
                      textColor: Colors.white,
                      child: Text(
                        '看看真车',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 12),
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
            ),
          ),
        ],
      ),
    );
  }
}
