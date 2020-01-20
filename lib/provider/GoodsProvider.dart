import 'package:flutter/material.dart';
import 'package:flutter_goods_check/bean/goods_item_entity.dart';
import 'package:flutter_goods_check/bean/source.dart';
import 'package:provide/provide.dart';

class GoodsProvider with ChangeNotifier {
  List<GoodsItemEntity> goodsList;

  static GoodsProvider getInstant(BuildContext context) {

    return Provide.value<GoodsProvider>(context);
  }


  initData() async{
    goodsList = await Source.generate();
    return "";
  }


  int serach(String text) {

  }
}
