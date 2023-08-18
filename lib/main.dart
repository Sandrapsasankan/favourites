import 'package:favourites/favourite.dart';
import 'package:favourites/provider/provider_class.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => Provider_class(),
        child:
      MaterialApp(
    debugShowCheckedModeBanner: false,
    home:favourite()
  )));
}
