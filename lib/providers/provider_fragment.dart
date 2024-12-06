import 'dart:ffi';

import 'package:coffe_shop/fragments/fragment_home.dart';
import 'package:flutter/material.dart';

class ProviderFragment with ChangeNotifier {
  Widget _currentFragment = FragmentHome();
  int _currentIndex = 0;
  int _currentCategory = 0;

  get currentFragmentGetter => _currentFragment;

  set setCurrentFragment(Widget widget){
    _currentFragment = widget;
    notifyListeners();
  }

  void changeCurrentFragment(Fragments fragment) {
    switch(fragment) {
      case Fragments.fragmentHome:
        setCurrentFragment = FragmentHome();
        break;
      default:
        setCurrentFragment = FragmentHome();
        break;
    }
  }

  get getCurrentIndex => _currentIndex;

  void setCurrentIndexFromBottonNav(int index) {
    if (index != _currentIndex) {
      if (index == 0) {
        changeCurrentFragment(Fragments.fragmentHome);
        _currentIndex = index;
      } else if (index == 1) {
        changeCurrentFragment(Fragments.fragmentWhitelist);
        _currentIndex = index;
      }
      notifyListeners();
    }
  }

  get currentCategoryGetter => _currentCategory;

  set setCurrentCategory(int category) {
    _currentCategory = category;
    notifyListeners();
  }
}

enum Fragments {
  fragmentHome,
  fragmentWhitelist
}
