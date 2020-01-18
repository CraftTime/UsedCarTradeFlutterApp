class CarList {
  static const _carList = <Car>[
    Car(
        img: 'images/car1.jpg',
        name: '标致508',
        detail: '2012款 2.0L 自动天窗经典版',
        focusNum: '19',
        price: '6.98万',
        favor: '红包1000元'),
    Car(
        img: 'images/car2.jpg',
        name: '大众捷达',
        detail: '2015款 质惠版 1.6L 自动时尚型',
        focusNum: '33',
        price: '5.98万',
        favor: '首付2.85万开回家'),
    Car(
        img: 'images/car3.jpg',
        name: 'MG瑞行',
        detail: '2016款 1.5L 自动超值豪华版',
        focusNum: '55',
        price: '8.98万',
        favor: '红包5000元'),
    Car(
        img: 'images/car4.jpg',
        name: '大众POLO',
        detail: '2016款 1.4L 自动风尚型',
        focusNum: '89',
        price: '7.08万',
        favor: '补贴金2200元'),
    Car(
        img: 'images/car5.jpg',
        name: '大众捷达',
        detail: '2017款 1.5L 自动舒适版',
        focusNum: '19',
        price: '7.30万',
        favor: '红包3000元'),
    Car(
        img: 'images/car6.jpg',
        name: '福特福克斯',
        detail: '2017款 三厢 1.6L 自动舒适型',
        focusNum: '19',
        price: '6.98万',
        favor: '首付3万开回家'),
  ];

  static List<Car> loadCar() {
    return _carList;
  }
}

class Car {
  final String img;
  final String name;
  final String detail;
  final String focusNum;
  final String price;
  final String favor;

  const Car(
      {this.img,
      this.name,
      this.detail,
      this.focusNum,
      this.price,
      this.favor});
}
