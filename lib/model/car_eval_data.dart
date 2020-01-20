class CarValueList {
  static const _carValueList = <CarValue>[
    CarValue(
        priceRange: '45.81~49.38',
        outside: '无瑕疵\n无色差',
        inside: '无磨损\n无异味',
        long: '4万公里内',
        question: '无事故维修'),
    CarValue(
        priceRange: '44.81~48.42',
        outside: '无色差\n个别瑕疵',
        inside: '轻微磨损\n无异味',
        long: '15万公里内',
        question: '无事故\n少量维修'),
    CarValue(
        priceRange: '43.77~47.42',
        outside: '轻微色差\n少量瑕疵',
        inside: '个别严重\n破损',
        long: '20万公里内',
        question: '有碰撞事故\n少量维修'),
  ];

  static List<CarValue> loadCarValue() {
    return _carValueList;
  }
}

class CarValue {
  final String priceRange;
  final String outside;
  final String inside;
  final String long;
  final String question;

  const CarValue(
      {this.priceRange, this.outside, this.inside, this.long, this.question});
}
