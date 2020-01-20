import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:used_car/model/car_eval_data.dart';
import 'package:used_car/model/car_eval_time_data.dart';
import 'package:used_car/pages/eval/eval_result_item.dart';
import 'package:used_car/pages/eval/eval_time_item.dart';

class EvalResult extends StatefulWidget {
  @override
  _EvalResultState createState() => _EvalResultState();
}

class _EvalResultState extends State<EvalResult> {
  int _statusIndex = 0;
  int _evalWay = 1;
  int _timeSelectIndex = -1;

  List<CarValue> _carValueList = CarValueList.loadCarValue();

  List<CarEvalTime> _carTimeList = CarEvalTimeList.loadCarEvalTime();

  SwiperController _swiperController = new SwiperController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        appBar: AppBar(
          elevation: 0,
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
            '您的爱车值这个价',
            style: TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(42, 43, 44, 1),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: CustomScrollView(
                physics: BouncingScrollPhysics(),
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          height: 8,
                          color: Color.fromRGBO(243, 249, 249, 1),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '车况优秀',
                                      style: TextStyle(
                                          color: Color.fromRGBO(66, 67, 68, 1),
                                          fontSize: 17),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      height: 2,
                                      width: 20,
                                      color: Color.fromRGBO(74, 166, 71,
                                          _statusIndex == 0 ? 1 : 0),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  setState(() {
                                    _statusIndex = 0;
                                    _swiperController.move(_statusIndex,
                                        animation: true);
                                  });
                                },
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '车况良好',
                                      style: TextStyle(
                                          color: Color.fromRGBO(66, 67, 68, 1),
                                          fontSize: 17),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      height: 2,
                                      width: 20,
                                      color: Color.fromRGBO(74, 166, 71,
                                          _statusIndex == 1 ? 1 : 0),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  setState(() {
                                    _statusIndex = 1;
                                    _swiperController.move(_statusIndex,
                                        animation: true);
                                  });
                                },
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '车况一般',
                                      style: TextStyle(
                                          color: Color.fromRGBO(66, 67, 68, 1),
                                          fontSize: 17),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      height: 2,
                                      width: 20,
                                      color: Color.fromRGBO(74, 166, 71,
                                          _statusIndex == 2 ? 1 : 0),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  setState(() {
                                    _statusIndex = 2;
                                    _swiperController.move(_statusIndex,
                                        animation: true);
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 210,
                          child: new Swiper.children(
                            controller: _swiperController,
                            viewportFraction: 0.8,
                            scale: 0.9,
                            children: _carValueList
                                .map(
                                  (item) => CarValueItem(
                                    carValue: item,
                                  ),
                                )
                                .toList(),
                            onIndexChanged: (index) {
                              setState(() {
                                _statusIndex = index;
                              });
                            },
                          ),
                        ),
                        Container(
                          height: 8,
                          margin: EdgeInsets.only(top: 10, bottom: 15),
                          color: Color.fromRGBO(243, 249, 249, 1),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            '预估验车 精准估值',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color.fromRGBO(43, 49, 56, 1),
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          margin: EdgeInsets.symmetric(vertical: 15),
                          color: Color.fromRGBO(243, 249, 249, 1),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  '评估地址',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(94, 97, 98, 1),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(240, 240, 249, 1),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                width: 160,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: GestureDetector(
                                        child: Container(
                                          padding:
                                              EdgeInsets.symmetric(vertical: 5),
                                          decoration: BoxDecoration(
                                            color: _evalWay == 0
                                                ? Color.fromRGBO(58, 160, 52, 1)
                                                : Color.fromRGBO(
                                                    240, 240, 249, 1),
                                            borderRadius: _evalWay == 0
                                                ? BorderRadius.circular(100)
                                                : BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(100),
                                                    bottomLeft:
                                                        Radius.circular(100),
                                                  ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            '上门评估',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: _evalWay == 0
                                                  ? Colors.white
                                                  : Color.fromRGBO(
                                                      39, 40, 43, 1),
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        onTap: () {
                                          setState(() {
                                            _evalWay = 0;
                                          });
                                        },
                                      ),
                                    ),
                                    Expanded(
                                        child: GestureDetector(
                                      child: Container(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5),
                                        decoration: BoxDecoration(
                                          color: _evalWay == 1
                                              ? Color.fromRGBO(58, 160, 52, 1)
                                              : Color.fromRGBO(
                                                  240, 240, 249, 1),
                                          borderRadius: _evalWay == 1
                                              ? BorderRadius.circular(100)
                                              : BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(100),
                                                  bottomRight:
                                                      Radius.circular(100),
                                                ),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          '到店评估',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: _evalWay == 1
                                                ? Colors.white
                                                : Color.fromRGBO(39, 40, 43, 1),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          _evalWay = 1;
                                        });
                                      },
                                    ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromRGBO(241, 243, 242, 1),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 15),
                                color: Color.fromRGBO(228, 248, 231, 1),
                                alignment: Alignment.center,
                                child: Text(
                                  _evalWay == 0
                                      ? '金牌评估师上门 立即获取报价'
                                      : '到店一站式卖车 快速检测 当天拿钱',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(83, 180, 76, 1),
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
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
                                            color:
                                                Color.fromRGBO(61, 62, 63, 1),
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
                              )
                            ],
                          ),
                        ),
                        Visibility(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Image.asset(
                                    'images/icon_s.png',
                                    width: 15,
                                    height: 15,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Text(
                                        'Craft保卖店',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(50, 52, 56, 1),
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
                                            color: Color.fromRGBO(
                                                141, 150, 147, 1),
                                            fontSize: 13),
                                      ),
                                    ],
                                  )),
                                  SizedBox(
                                    width: 15,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '查看更多门店',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(168, 171, 172, 1),
                                    fontSize: 13),
                              ),
                              Container(
                                height: 1,
                                margin: EdgeInsets.symmetric(vertical: 15),
                                color: Color.fromRGBO(243, 249, 249, 1),
                              ),
                            ],
                          ),
                          visible: _evalWay == 1,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                            right: 15,
                            top: 6,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                _evalWay == 0 ? '上门时间' : '预计到店时间',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color.fromRGBO(43, 49, 56, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliverPadding(
                    padding: EdgeInsets.all(15),
                    sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
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
                        childCount: _carTimeList.length,
                      ),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 15.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SafeArea(
              top: false,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  child: MaterialButton(
                    color: Color.fromRGBO(0, 166, 20, 1),
                    onPressed: () {},
                    textColor: Colors.white,
                    child: Text("提交"),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                  )),
            ),
          ],
        ));
  }
}
