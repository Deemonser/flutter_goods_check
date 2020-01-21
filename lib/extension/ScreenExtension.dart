import 'package:flutter_screenutil/flutter_screenutil.dart';

extension Screen on int {
  int get toY {
    return ScreenUtil().setHeight(this);
  }

  int get toX {
    return ScreenUtil().setWidth(this);
  }

  int get toSp {
    return ScreenUtil().setSp(this);
  }
}

