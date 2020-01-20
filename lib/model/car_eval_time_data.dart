class CarEvalTimeList {
  static List<CarEvalTime> _carEvalTimeList = <CarEvalTime>[
    CarEvalTime(
        timeRange: '9:00-12:00',
      amPm: '今天上午',),
    CarEvalTime(
      timeRange: '12:00-18:00',
      amPm: '今天下午',),
    CarEvalTime(
      timeRange: '9:00-12:00',
      amPm: '明天上午',),
    CarEvalTime(
      timeRange: '12:00-18:00',
      amPm: '明天下午',),
    CarEvalTime(
      timeRange: '时间待确定',
      amPm: '让客服联系我',),
  ];

  static List<CarEvalTime> loadCarEvalTime() {
    return _carEvalTimeList;
  }
}

class CarEvalTime {
  String timeRange;
  String amPm;
  CarEvalTime(
      {this.timeRange, this.amPm});
}
