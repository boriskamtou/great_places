import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:place_app/models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

//  This function return a copy
//  of the list of our items
//  so that the original list can't be change
  List<Place> get items {
    return [..._items];
  }

  void addPlace(String pickedTitle, File pickedImage) {
    final newPlace = Place(
        id: DateTime.now().toString(),
        image: pickedImage,
        title: pickedTitle,
        location: null);

    _items.add(newPlace);

    notifyListeners();
  }
}
