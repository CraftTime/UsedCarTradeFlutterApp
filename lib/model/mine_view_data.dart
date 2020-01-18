class CarList {
  static const _carList = <Car>[
    Car(
        img: 'images/car1.jpg',
        name: '标致508 2012款 2.0L 自动天窗经典版',
        detail: '2019年/1.2万公里',
        price: '16.98万',
        newPrice: '11.30万'),
    Car(
        img: 'images/car2.jpg',
        name: '大众捷达 2015款 质惠版 1.6L 自动时尚型',
        detail: '2019年/0.5万公里',
        price: '15.98万',
        newPrice: '12.67万'),
    Car(
        img: 'images/car3.jpg',
        name: 'MG瑞行 2016款 1.5L 自动超值豪华版',
        detail: '2019年/0.2万公里',
        price: '18.98万',
        newPrice: '13.42万'),
    Car(
        img: 'images/car4.jpg',
        name: '大众POLO 2016款 1.4L 自动风尚型',
        detail: '2019年/1.4万公里',
        price: '17.08万',
        newPrice: '12.52万'),
    Car(
        img: 'images/car5.jpg',
        name: '大众捷达 2017款 1.5L 自动舒适版',
        detail: '2019年/1.8万公里',
        price: '17.30万',
        newPrice: '13.20万'),
    Car(
        img: 'images/car6.jpg',
        name: '福特福克斯 2017款 三厢 1.6L 自动舒适型自动舒适型自动舒适型自动舒适型',
        detail: '2019年/1.1万公里',
        price: '16.98万',
        newPrice: '12.22万'),
  ];

  static List<Car> loadCar() {
    return _carList;
  }
}

class Car {
  final String img;
  final String name;
  final String detail;
  final String price;
  final String newPrice;

  const Car(
      {this.img,
      this.name,
      this.detail,
      this.newPrice,
      this.price});
}
