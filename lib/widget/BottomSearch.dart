import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSearch extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(1, 221, 221, 221),
      height: ScreenUtil().setHeight(150),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Icon(
              Icons.menu,
              color: Colors.blue,
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(83),
            width: ScreenUtil().setWidth(702),
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Center(
              child: TextField(
                controller: _controller,
                textInputAction: TextInputAction.search,
                autofocus: false,
                decoration: null,
                onSubmitted: (s) {
                  print(s);
                },
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          ),
          Expanded(
            child: Icon(
              Icons.search,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
