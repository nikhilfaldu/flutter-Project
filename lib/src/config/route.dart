import 'package:flutter/material.dart';
import 'package:first/src/pages/mainPage.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      '/': (_) => MainPage(title: '',),
      // '/detail': (_) => ProductDetailPage()
    };
  }
}
