import 'package:flutter/foundation.dart';

class HomePageModel extends ChangeNotifier{
  int _selectedIndex = 0;

  int get selectedIndex {
    return _selectedIndex;
  }

  void changeSelectTap(int index){
    _selectedIndex=index;
    notifyListeners();
  }
}