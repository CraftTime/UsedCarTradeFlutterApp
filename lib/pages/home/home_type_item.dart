import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:used_car/model/home_page_model.dart';
import 'package:used_car/model/home_type_data.dart';
import 'package:used_car/pages/eval/eval_price.dart';
import 'package:used_car/widgets/web_view.dart';

class HomeTypeItem extends StatelessWidget {
  final HomeType homeType;

  const HomeTypeItem({Key key, this.homeType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomePageModel>(builder: (context, model, child) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
        switch (homeType.typeName) {
          case '养车':
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      WebViewWidget(
                        url: 'https://shop.guazi.com',
                        title: homeType.typeName,),
                ));
            break;
          case '新车':
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      WebViewWidget(
                        url: 'https://m.maodou.com', title: homeType.typeName,),
                ));
            break;
          case '二手车':
          case '严选车':
          case '全国购':
          case '准新车':
          case '热销SUV':
          case '降价急售':
          case '今日超值':
            model.changeSelectTap(1);
            break;
          case '免费卖车':
          case '快速卖车':
            model.changeSelectTap(2);
            break;
          case '估价':
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      EvalPrice(),
                ));
            break;
          default:
            break;
        }
      }, child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            homeType.typeImg,
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            homeType.typeName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color.fromRGBO(62, 66, 69, 1),
              fontSize: 12,
            ),
          ),
        ],
      ),);
    });
  }
}
