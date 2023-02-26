import 'dart:async';

import 'package:first/api/api.dart';
import 'package:first/src/data.dart';
import 'package:first/src/model/product.dart';
import 'package:first/src/product.dart' as prd;
import 'package:flutter/material.dart';
import 'package:first/src/config/route.dart';
import 'package:first/src/pages/mainPage.dart';
import 'package:first/src/pages/product_detail.dart';
import 'package:first/src/widgets/customRoute.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/themes/theme.dart';

void main() => runApp(MaterialApp(
      home: FirstPage(),
    ));

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  late BuildContext ctx;
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () async {
      await getProductList();
      Navigator.of(ctx).pushReplacement(
          MaterialPageRoute(builder: ((context) => const MyApp())));
    });
  }

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                'https://imgs.search.brave.com/ydfvVAWAIZlRJWJsbYGKdhjmmIpIcrgSGfkelOfullU/rs:fit:768:1200:1/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2FkL2Iz/L2FiL2FkYjNhYjEw/MmE5Mzg3YmNjNWIz/YjU4MWQ4NGJiNDU3/LnBuZw',
              ),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce ',
      theme: AppTheme.lightTheme.copyWith(
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: Routes.getRoute(),
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name!.contains('detail')) {
          return CustomRoute<bool>(
              builder: (BuildContext context) => const ProductDetailPage());
        } else {
          return CustomRoute<bool>(
              builder: (BuildContext context) => MainPage(
                    title: '',
                  ));
        }
      },
      initialRoute: "MainPage",
    );
  }
}
