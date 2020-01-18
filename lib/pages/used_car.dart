import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:used_car/model/home_page_model.dart';
import 'package:used_car/pages/buy/buy_list.dart';
import 'package:used_car/pages/home/home.dart';
import 'package:used_car/pages/mine/mine.dart';
import 'package:used_car/pages/sell/sell.dart';

class UsedCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: CarHomeApp(),
    );
  }
}

class CarHomeApp extends StatefulWidget {
  @override
  _CarHomeState createState() {
    // TODO: implement createState
    return _CarHomeState();
  }
}

class _CarHomeState extends State<CarHomeApp> {
//  int _selectedIndex = 0;

  List<Widget> _bodyWidgets=<Widget>[
    Home(),
    BuyList(),
    Sell(),
    Mine(),
  ];

  List<BottomNavigationBarItem> _widgetBottoms = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Image.asset(
        'images/tab_home_normal.png',
        width: 24,
        height: 24,
      ),
      activeIcon: Image.asset(
        'images/tab_home_selected.png',
        width: 24,
        height: 24,
      ),
      title: Text('首页'),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'images/tab_buy_normal.png',
        width: 24,
        height: 24,
      ),
      activeIcon: Image.asset(
        'images/tab_buy_selected.png',
        width: 24,
        height: 24,
      ),
      title: Text('买车'),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'images/tab_sell_normal.png',
        width: 24,
        height: 24,
      ),
      activeIcon: Image.asset(
        'images/tab_sell_selected.png',
        width: 24,
        height: 24,
      ),
      title: Text('卖车'),
    ),
//    BottomNavigationBarItem(
//      icon: Image.asset(
//        'images/tab_message_center_normal.png',
//        width: 24,
//        height: 24,
//      ),
//      activeIcon: Image.asset(
//        'images/tab_message_center_selected.png',
//        width: 24,
//        height: 24,
//      ),
//      title: Text('消息'),
//    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'images/tab_my_info_normal.png',
        width: 24,
        height: 24,
      ),
      activeIcon: Image.asset(
        'images/tab_my_info_selected.png',
        width: 24,
        height: 24,
      ),
      title: Text('我的'),
    ),
  ];

//  void _onItemTapped(int index) {
//    setState(() {
//      _selectedIndex = index;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HomePageModel>(builder: (context, model, child) {
        return _bodyWidgets.elementAt(model.selectedIndex);
      }),
      bottomNavigationBar: Consumer<HomePageModel>(
        builder: (context, model, child) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: _widgetBottoms,
            backgroundColor: Colors.white,
            currentIndex: model.selectedIndex,
            unselectedItemColor: Color.fromRGBO(75, 83, 95, 1),
            selectedItemColor: Color.fromRGBO(0, 168, 14, 1),
            selectedFontSize: 10,
            unselectedFontSize: 10,
            onTap: (index) {
              model.changeSelectTap(index);
            },
          );
        },),
    );
  }
}
