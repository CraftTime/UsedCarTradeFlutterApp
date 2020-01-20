import 'package:flutter/material.dart';
import 'package:used_car/model/mine_recommend_car_data.dart';
import 'package:used_car/pages/home/car_detail.dart';
import 'package:used_car/pages/mine/mine_recommend_car_item.dart';
import 'package:used_car/pages/mine/star/mine_star.dart';
import 'package:used_car/pages/mine/view/mine_view_histroy.dart';

class Mine extends StatefulWidget {
  @override
  _MineState createState() => _MineState();
}

class _MineState extends State<Mine> {
  ScrollController _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = new ScrollController();
    _scrollController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<Car> _carList = CarList.loadCar();
    return new Scaffold(
      backgroundColor: Color.fromRGBO(237, 243, 247, 1),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            color: Color.fromRGBO(255, 255, 255, 1),
            child: SafeArea(
              child: Container(
                height: 35,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/icon_common_setting.png',
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
          Expanded(
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          '您好，Bingo',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color.fromRGBO(54, 61, 66, 1),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '0',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Color.fromRGBO(75, 82, 94, 1),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '我的收藏',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(129, 133, 139, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MineStar(),
                                      ));
                                },
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
                                  Text(
                                    '0',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Color.fromRGBO(75, 82, 94, 1),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '我的对比',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(129, 133, 139, 1),
                                    ),
                                  ),
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
                                  Text(
                                    '0',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Color.fromRGBO(75, 82, 94, 1),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '我的订阅',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(129, 133, 139, 1),
                                    ),
                                  ),
                                ],
                              ),
                              flex: 1,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '0',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Color.fromRGBO(75, 82, 94, 1),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '浏览记录',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(129, 133, 139, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MineViewHistory(),
                                      ));
                                },
                              ),
                              flex: 1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'images/img_mine_subs.png',
                                width: 25,
                                height: 25,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '我的约看',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(129, 133, 139, 1),
                                ),
                              ),
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
                              Image.asset(
                                'images/img_mine_buyed.png',
                                width: 25,
                                height: 25,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '我买的车',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(129, 133, 139, 1),
                                ),
                              ),
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
                              Image.asset(
                                'images/img_mine_depreciate.png',
                                width: 25,
                                height: 25,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '降价提醒',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(129, 133, 139, 1),
                                ),
                              ),
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
                              Image.asset(
                                'images/img_mine_discount.png',
                                width: 25,
                                height: 25,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '砍价记录',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(129, 133, 139, 1),
                                ),
                              ),
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          '常用功能',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(45, 52, 58, 1),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'images/img_mine_service.png',
                                    width: 25,
                                    height: 25,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '我的客服',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(129, 133, 139, 1),
                                    ),
                                  ),
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
                                  Image.asset(
                                    'images/img_mine_advice.png',
                                    width: 25,
                                    height: 25,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '意见反馈',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(129, 133, 139, 1),
                                    ),
                                  ),
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
                                  Image.asset(
                                    'images/img_mine_give_back.png',
                                    width: 25,
                                    height: 25,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '我要还款',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(129, 133, 139, 1),
                                    ),
                                  ),
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
                                  Image.asset(
                                    'images/img_mine_disturb.png',
                                    width: 25,
                                    height: 25,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '屏蔽打扰',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(129, 133, 139, 1),
                                    ),
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
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'images/img_mine_question.png',
                                    width: 25,
                                    height: 25,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '问卷调查',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(129, 133, 139, 1),
                                    ),
                                  ),
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
                                  Image.asset(
                                    'images/img_mine_selled.png',
                                    width: 25,
                                    height: 25,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '售后保障',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(129, 133, 139, 1),
                                    ),
                                  ),
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
                                  Image.asset(
                                    'images/img_mine_msg_setting.png',
                                    width: 25,
                                    height: 25,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '消息设置',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(129, 133, 139, 1),
                                    ),
                                  ),
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
                                  Image.asset(
                                    'images/img_mine_complain.png',
                                    width: 25,
                                    height: 25,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '服务热线',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(129, 133, 139, 1),
                                    ),
                                  ),
                                ],
                              ),
                              flex: 1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          '为你推荐',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(45, 52, 58, 1),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Image.asset(
                          'images/img_mine_ad.png',
                          width: MediaQuery.of(context).size.width - 30,
                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    if (index < _carList.length) {
                      return  GestureDetector(
                        behavior: HitTestBehavior.opaque, child: MineRecommendCarItem(
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
              controller: _scrollController,
            ),
          ),
        ],
      ),
    );
  }
}
