import 'package:flutter/cupertino.dart';
class Provider_class extends ChangeNotifier{
  List _favitem = [];
  List get favoriteitem => _favitem;
  void favorites(String item){
    final favitemlist = _favitem.contains(item);
    if(favitemlist){
      _favitem.remove(item);
    }
    else{
      _favitem.add(item);
    }
    notifyListeners();


  }
  bool iconchange(String name)
  {
    final favicn= _favitem.contains(name);
      return favicn;

  }
}