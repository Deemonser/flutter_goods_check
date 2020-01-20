import 'package:flutter_goods_check/generated/json/base/json_convert_content.dart';

class GoodsItemEntity with JsonConvert<GoodsItemEntity> {
	String code;
	String name;
	String price;
	int count;
}
