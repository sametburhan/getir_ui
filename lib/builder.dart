import 'package:flutter/material.dart';
import 'package:getir_ui/constant.dart';

class ustPhoto extends StatelessWidget {
  final assetText;
  ustPhoto({required this.assetText});

  @override
  Widget build(BuildContext context) {
    return Image.asset(assetText);
  }
}

class ustKategori extends StatelessWidget {
  final assetText;
  final categoryName;
  ustKategori({required this.assetText, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              assetText,
            ),
            iconSize: 40,
          ),
          Text(
            categoryName,
          ),
        ],
      ),
      height: MediaQuery.of(context).size.width * .18,
      width: MediaQuery.of(context).size.width * 0.21,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 192, 192, 192).withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: WhiteColor,
          borderRadius: BorderRadius.all(Radius.circular(14))),
    );
  }
}
