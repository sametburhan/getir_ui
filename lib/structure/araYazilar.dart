import 'package:flutter/material.dart';
import 'package:getir_ui/structure/constant.dart';

class araYazilar extends StatelessWidget {
  final text1;
  final text2;
  araYazilar({this.text1, this.text2});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: TextStyle(fontSize: 17),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                text2,
                style: TextStyle(color: BackgroundColor, fontSize: 17),
              ))
        ],
      ),
    );
  }
}
