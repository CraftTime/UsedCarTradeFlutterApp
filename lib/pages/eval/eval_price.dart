import 'package:flutter/material.dart';
import 'package:used_car/pages/eval/eval_result.dart';

class EvalPrice extends StatefulWidget {
  @override
  _EvalPriceState createState() => _EvalPriceState();
}

class _EvalPriceState extends State<EvalPrice> {
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
            '爱车估计',
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
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        height: 10,
                        color: Color.fromRGBO(238, 244, 248, 1),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('我的车型',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    wordSpacing: 1,
                                    letterSpacing: 1,
                                    fontSize: 15,
                                    color: Color.fromRGBO(91, 97, 100, 1))),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text('AC Schnitzer AC Schnitzer 7系',
                                  textAlign: TextAlign.right,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      wordSpacing: 1,
                                      letterSpacing: 1,
                                      fontSize: 15,
                                      color: Color.fromRGBO(64, 68, 70, 1))),
                            ),
                            SizedBox(width: 8),
                            Image.asset('images/icon_jump.png',width: 10,height: 10,),
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Color.fromRGBO(238, 244, 248, 1),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('上牌时间',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    wordSpacing: 1,
                                    letterSpacing: 1,
                                    fontSize: 15,
                                    color: Color.fromRGBO(91, 97, 100, 1))),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text('2012年6月',
                                  textAlign: TextAlign.right,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      wordSpacing: 1,
                                      letterSpacing: 1,
                                      fontSize: 15,
                                      color: Color.fromRGBO(64, 68, 70, 1))),
                            ),
                            SizedBox(width: 8),
                            Image.asset('images/icon_jump.png',width: 10,height: 10,),
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Color.fromRGBO(238, 244, 248, 1),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('行驶里程',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    wordSpacing: 1,
                                    letterSpacing: 1,
                                    fontSize: 15,
                                    color: Color.fromRGBO(91, 97, 100, 1))),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text('6万',
                                  textAlign: TextAlign.right,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      wordSpacing: 1,
                                      letterSpacing: 1,
                                      fontSize: 15,
                                      color: Color.fromRGBO(64, 68, 70, 1))),
                            ),
                            SizedBox(width: 8),
                            Image.asset('images/icon_jump.png',width: 10,height: 10,),
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Color.fromRGBO(238, 244, 248, 1),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('卖车地点',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    wordSpacing: 1,
                                    letterSpacing: 1,
                                    fontSize: 15,
                                    color: Color.fromRGBO(91, 97, 100, 1))),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text('包头',
                                  textAlign: TextAlign.right,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      wordSpacing: 1,
                                      letterSpacing: 1,
                                      fontSize: 15,
                                      color: Color.fromRGBO(64, 68, 70, 1))),
                            ),
                            SizedBox(width: 8),
                            Image.asset('images/icon_jump.png',width: 10,height: 10,),
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Color.fromRGBO(238, 244, 248, 1),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('卖车意愿',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    wordSpacing: 1,
                                    letterSpacing: 1,
                                    fontSize: 15,
                                    color: Color.fromRGBO(91, 97, 100, 1))),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text('考虑卖车',
                                  textAlign: TextAlign.right,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      wordSpacing: 1,
                                      letterSpacing: 1,
                                      fontSize: 15,
                                      color: Color.fromRGBO(64, 68, 70, 1))),
                            ),
                            SizedBox(width: 8),
                            Image.asset('images/icon_jump.png',width: 10,height: 10,),
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Color.fromRGBO(238, 244, 248, 1),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SafeArea(
              top: false,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  child: MaterialButton(
                    color: Color.fromRGBO(0, 166, 20, 1),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>EvalResult()));
                    },
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
