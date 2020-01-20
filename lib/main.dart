import 'package:flutter/material.dart';
import 'package:flutter_goods_check/provider/GoodsProvider.dart';
import 'package:flutter_goods_check/widget/GoodsList.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';

import 'widget/BottomSearch.dart';

void main() {
  return runApp(
    ProviderNode(
      child: MyApp(),
      providers: Providers()..provide(Provider.value(GoodsProvider())),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Goods Check",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 1080, height: 1920)..init(context);
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(child: GoodsList()),
            BottomSearch(),
          ],
        ),
      ),
    );
  }
}
