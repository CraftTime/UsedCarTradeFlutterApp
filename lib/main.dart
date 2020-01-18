import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:used_car/model/home_page_model.dart';
import 'package:used_car/pages/used_car.dart';

void main() => runApp(ChangeNotifierProvider<HomePageModel>(create: (context)=>HomePageModel(),child: UsedCar(),));
