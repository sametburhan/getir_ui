import 'package:flutter/material.dart';
import 'package:getir_ui/structure/constant.dart';

class araYazilar extends StatelessWidget {
  final text1;
  final text2;
  final icon;
  final color;
  final bool visible;
  araYazilar(
      {this.text1, this.text2, this.icon, this.color, required this.visible});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 25.0, right: 25, top: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                text2,
                style: TextStyle(color: color, fontSize: 17),
              ),
              Visibility(
                  visible: visible,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(icon),
                    color: BackgroundColor,
                    iconSize: 30,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
