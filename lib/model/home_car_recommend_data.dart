class BrandList {
  static const _brandList = <Brand>[
    Brand(
      name: '5万以下',
      isBrand: false,
    ),
    Brand(
      name: '5-10万',
      isBrand: false,
    ),
    Brand(
      name: '10-15万',
      isBrand: false,
    ),
    Brand(
      name: '15万以上',
      isBrand: false,
    ),

    Brand(
      img: 'images/dazhong.png',
      name: '大众',
      isBrand: true,
    ),

    Brand(
      img: 'images/honda.png',
      name: '本田',
      isBrand: true,
    ),

    Brand(
      img: 'images/audi.png',
      name: '奥迪',
      isBrand: true,
    ),

    Brand(
      img: 'images/cadillac.png',
      name: '凯迪拉克',
      isBrand: true,
    ),

    Brand(
      img: 'images/maserati.png',
      name: '玛莎拉蒂',
      isBrand: true,
    ),

    Brand(
      img: 'images/bmw.png',
      name: '宝马',
      isBrand: true,
    ),

    Brand(
      img: 'images/jili.png',
      name: '吉利',
      isBrand: true,
    ),

    Brand(
      img: 'images/biaozhi.png',
      name: '标致',
      isBrand: true,
    ),
  ];

  static List<Brand> loadBrand() {
    return _brandList;
  }
}

class Brand {
  final String img;
  final String name;
  final bool isBrand;

  const Brand({this.img, this.name, this.isBrand});
}
