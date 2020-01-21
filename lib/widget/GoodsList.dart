import 'package:flutter/material.dart';
import 'package:flutter_goods_check/bean/goods_item_entity.dart';
import 'package:flutter_goods_check/provider/GoodsProvider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';

class GoodsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(1, 255, 254, 255),
        child: FutureBuilder(
            future: GoodsProvider.getInstant(context).initData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Provide<GoodsProvider>(
                  builder: (context, child, val) {
                    if (val.goodsList == null) {
                      val.initData();
                      return Center(
                        child: Text("Loading...."),
                      );
                    } else {
                      return ListView.builder(
                        itemBuilder: (context, index) =>
                            _buildItemView(val.goodsList[index]),
                        itemCount: val.goodsList.length,
                      );
                    }
                  },
                );
              } else {
                return Center(
                  child: Text("Loading...."),
                );
              }
            }));
  }

  _buildItemView(GoodsItemEntity itemEntity) {
    return Card(
      margin: EdgeInsets.fromLTRB(12, 3, 12, 3),
      child: Container(
        padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
        height: ScreenUtil().setHeight(180),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  itemEntity.name,
                  style: TextStyle(fontSize: ScreenUtil().setSp(48)),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      itemEntity.code,
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "${itemEntity.price}",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                )
              ],
            )),
            Container(
              child: Text(
                "${itemEntity.count}",
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
