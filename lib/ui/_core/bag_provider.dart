import 'package:flutter/material.dart';
import 'package:myapp/model/dish.dart';

class BagProvider extends ChangeNotifier {
  List<Dish> dishesOnBag = [];

  void addDishToBag(Dish dish) {
    dishesOnBag.add(dish);
    notifyListeners();
  }

  void addDishesToBag(List<Dish> dishes) {
    dishesOnBag.addAll(dishes);
    notifyListeners();
  }

  void removeDishFromBag(Dish dish) {
    dishesOnBag.remove(dish);
    notifyListeners();
  }

  void clearBag() {
    dishesOnBag.clear();
    notifyListeners();
  }

  Map<Dish, int> getDishCountOnBag() {
    Map<Dish, int> dishCount = {};
    for (Dish dish in dishesOnBag) {
      if (dishCount.containsKey(dish)) {
        dishCount[dish] = dishCount[dish]! + 1;
      } else {
        dishCount[dish] = 1;
      }
    }
    return dishCount;
  }
}
