import 'package:flutter/material.dart';
import 'package:used_car/model/car_eval_time_data.dart';
import 'package:used_car/model/sell_car_brand_data.dart';
import 'package:used_car/pages/eval/eval_time_item.dart';

class EvalSell extends StatefulWidget {
  @override
  _EvalSellState createState() => _EvalSellState();
}

class _EvalSellState extends State<EvalSell> {
  double _headOpacity = 0;
  bool _isArrive = true;
  ScrollController _scrollController;
  List<CarEvalTime> _carTimeList = CarEvalTimeList.loadCarEvalTime();
  int _timeSelectIndex = -1;

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
                bottom: false,
                top: false,
                sliver: SliverToBoxAdapter(
                  child: Stack(
                    children: <Widget>[
                      Image.asset(
                        'images/img_sell_eval_bg.jpg',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fitWidth,
                        color: Color.fromRGBO(237, 243, 244, 1),
                        colorBlendMode: BlendMode.darken,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.width / 750 * 380,
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width / 750 * 160,
                            right: 15,
                            left:
                                MediaQuery.of(context).size.width / 750 * 260),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text(
                              '瓜子检测升级\n免费到店评估',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 25,
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(125, 78, 26, 1),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '签约当天立拿50%车款',
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12,
                                letterSpacing: 2,
                                color: Color.fromRGBO(125, 78, 26, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width / 750 * 380,
                            left: 15,
                            right: 15),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                'Craft卖车服务店全国覆盖',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(41, 44, 50, 1),
                                ),
                              ),
                              Container(
                                height: 10,
                              ),
                              Image.asset(
                                'images/img_map.png',
                                height: 130,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      '评估点：3个',
                                      textAlign: TextAlign.right,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color.fromRGBO(105, 111, 112, 1),
                                      ),
                                    ),
                                    flex: 1,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: Text(
                                      '服务车主：16835名',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color.fromRGBO(105, 111, 112, 1),
                                      ),
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
                padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                sliver: SliverToBoxAdapter(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          '选择评估地点时间',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(41, 44, 50, 1),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(243, 248, 252, 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                'images/location_icon.png',
                                width: 12,
                                height: 12,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  '万科湖心岛',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Color.fromRGBO(61, 62, 63, 1),
                                      fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '修改',
                                style: TextStyle(
                                    color: Color.fromRGBO(84, 176, 90, 1),
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '附件门店',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(59, 62, 71, 1),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                _isArrive
                                    ? 'images/icon_s.png'
                                    : 'images/feedback_uncheck.png',
                                width: 15,
                                height: 15,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text(
                                    'Craft保卖店',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: _isArrive
                                            ? Color.fromRGBO(50, 52, 56, 1)
                                            : Color.fromRGBO(140, 143, 156, 1),
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '厦门市湖里区高崎北路433-434号',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: _isArrive
                                            ? Color.fromRGBO(141, 150, 147, 1)
                                            : Color.fromRGBO(164, 165, 169, 1),
                                        fontSize: 13),
                                  ),
                                ],
                              )),
                            ],
                          ),
                          onTap: () {
                            setState(() {
                              _isArrive = true;
                            });
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '更多门店',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Color.fromRGBO(168, 171, 172, 1),
                                  fontSize: 13),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'images/icon_jump.png',
                              width: 10,
                              height: 10,
                            ),
                          ],
                        ),
                        Container(
                          height: 1,
                          color: Color.fromRGBO(237, 243, 247, 1),
                          margin: EdgeInsets.symmetric(
                            vertical: 15,
                          ),
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                !_isArrive
                                    ? 'images/icon_s.png'
                                    : 'images/feedback_uncheck.png',
                                width: 15,
                                height: 15,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text(
                                    '上门评估',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: !_isArrive
                                            ? Color.fromRGBO(50, 52, 56, 1)
                                            : Color.fromRGBO(140, 143, 156, 1),
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '不方便到店可选择上门评估，需收取80元费用',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: !_isArrive
                                            ? Color.fromRGBO(141, 150, 147, 1)
                                            : Color.fromRGBO(164, 165, 169, 1),
                                        fontSize: 13),
                                  ),
                                ],
                              )),
                            ],
                          ),
                          onTap: () {
                            setState(() {
                              _isArrive = false;
                            });
                          },
                        ),
                        Container(
                          height: 1,
                          color: Color.fromRGBO(237, 243, 247, 1),
                          margin: EdgeInsets.symmetric(
                            vertical: 15,
                          ),
                        ),
                        Text(
                          '到店时间',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(59, 62, 71, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(left: 15,right: 15,bottom: 5),
                sliver: SliverToBoxAdapter(
                  child: Container(
                    padding: EdgeInsets.only(left: 15,right: 15,bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: GridView.builder(
                      padding: EdgeInsets.only(top: 0),
                      itemBuilder: (context, index) {
                        if (index < _carTimeList.length) {
                          return GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            child: CarValueTimeItem(
                              carEvalTime: _carTimeList[index],
                              isSelectIndex: _timeSelectIndex,
                              index: index,
                            ),
                            onTap: () {
                              setState(() {
                                _timeSelectIndex = index;
                              });
                            },
                          );
                        }
                        return null;
                      },
                      itemCount: _carTimeList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 1.5,
                      ),
                      shrinkWrap: true,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SafeArea(
                  top: false,
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                      child: MaterialButton(
                        color: Color.fromRGBO(0, 166, 20, 1),
                        onPressed: () {},
                        textColor: Colors.white,
                        child: Text("免费预约"),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                      )),
                ),
              ),
            ],
            controller: _scrollController,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            color: Color.fromRGBO(255, 255, 255, _headOpacity),
            child: SafeArea(
              bottom: false,
              child: Container(
                height: 35,
                child: Stack(
                  children: <Widget>[
                    Align(
                      child: Text(
                        '预约卖车',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(36, 42, 48, _headOpacity),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        child: Opacity(
                          opacity: _headOpacity,
                          child: Image.asset(
                            'images/ic_common_header_back.png',
                            width: 20,
                            height: 20,
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        child: Opacity(
                          opacity: 1 - _headOpacity,
                          child: Image.asset(
                            'images/ic_common_header_back.png',
                            width: 20,
                            height: 20,
                            color: Color.fromRGBO(125, 78, 26, 1),
                            colorBlendMode: BlendMode.srcIn,
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
