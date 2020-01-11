class HomeTypeList {
  static const _homeType1 = <HomeType>[
    HomeType(typeImg: 'images/type1.png', typeName: '二手车'),
    HomeType(typeImg: 'images/type2.png', typeName: '严选车'),
    HomeType(typeImg: 'images/type3.png', typeName: '全国购'),
    HomeType(typeImg: 'images/type4.png', typeName: '新车'),
    HomeType(typeImg: 'images/type5.png', typeName: '限时秒抢'),
    HomeType(typeImg: 'images/type6.png', typeName: '免费卖车'),
    HomeType(typeImg: 'images/type7.png', typeName: '快速卖车'),
    HomeType(typeImg: 'images/type8.png', typeName: '估价'),
    HomeType(typeImg: 'images/type9.png', typeName: '养车'),
    HomeType(typeImg: 'images/type10.png', typeName: '服务保障'),
  ];
  static const _homeType2 = <HomeType>[
    HomeType(typeImg: 'images/type11.png', typeName: '热门直播'),
    HomeType(typeImg: 'images/type12.png', typeName: '查成交'),
    HomeType(typeImg: 'images/type13.png', typeName: '申请分期'),
    HomeType(typeImg: 'images/type14.png', typeName: '瓜子百科'),
    HomeType(typeImg: 'images/type15.png', typeName: '热销排行'),
    HomeType(typeImg: 'images/type16.png', typeName: '准新车'),
    HomeType(typeImg: 'images/type17.png', typeName: '热销SUV'),
    HomeType(typeImg: 'images/type18.jpg', typeName: '快速找车'),
    HomeType(typeImg: 'images/type19.png', typeName: '降价急售'),
    HomeType(typeImg: 'images/type20.png', typeName: '今日超值'),
  ];

  static List<HomeType> loadType1() {
    return _homeType1;
  }

  static List<HomeType> loadType2() {
    return _homeType2;
  }
}

class HomeType {
  final String typeImg;
  final String typeName;

  const HomeType({this.typeImg, this.typeName});
}
