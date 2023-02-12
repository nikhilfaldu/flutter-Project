import 'package:flutter/material.dart';
import 'package:first/src/mainPage.dart';

class Routes {
  static get keys => null;

  static get titles => null;

  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      '/': (_) => MainPage(key: keys, title: titles),
      // '/detail': (_) => ProductDetailPage()
    };
  }
}
