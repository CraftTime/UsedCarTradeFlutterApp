class BrandList {
  static const _brandList = <Brand>[

    Brand(
      img: 'images/dazhong.png',
      name: '大众',
    ),

    Brand(
      img: 'images/honda.png',
      name: '本田',
    ),

    Brand(
      img: 'images/audi.png',
      name: '奥迪',
    ),

    Brand(
      img: 'images/cadillac.png',
      name: '凯迪拉克',
    ),

    Brand(
      img: 'images/maserati.png',
      name: '玛莎拉蒂',
    ),

    Brand(
      img: 'images/bmw.png',
      name: '宝马',
    ),

    Brand(
      img: 'images/jili.png',
      name: '吉利',
    ),

    Brand(
      img: 'images/biaozhi.png',
      name: '标致',
    ),

    Brand(
      img: 'images/benchi.png',
      name: '奔驰',
    ),
    Brand(
      img: 'images/fute.png',
      name: '福特',
    ),
  ];

  static List<Brand> loadBrand() {
    return _brandList;
  }
}

class Brand {
  final String img;
  final String name;

  const Brand({this.img, this.name});
}
