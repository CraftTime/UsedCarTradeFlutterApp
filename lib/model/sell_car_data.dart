class CarList {
  static const _carList = <Car>[
    Car(
      img: 'images/car1.jpg',
      name: '标致508 2012款 2.0L 自动天窗经典版',
      detail: '2019年/1.2万公里',
      price: '6.98万',
      marketPrice: '9.30万',
      man: '陈先生',
      city: '成都',
      status: '刚刚成交',
    ),
    Car(
      img: 'images/car2.jpg',
      name: '大众捷达 2015款 质惠版 1.6L 自动时尚型',
      detail: '2019年/0.5万公里',
      price: '5.98万',
      marketPrice: '7.67万',
      man: '杨女士',
      city: '昆明',
      status: '刚刚成交',
    ),
  ];

  static List<Car> loadCar() {
    return _carList;
  }
}

class Car {
  final String man;
  final String city;
  final String status;
  final String img;
  final String name;
  final String detail;
  final String marketPrice;
  final String price;

  const Car(
      {this.img,
      this.name,
      this.detail,
      this.marketPrice,
      this.price,
      this.man,
      this.city,
      this.status});
}
