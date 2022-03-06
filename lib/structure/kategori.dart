import 'package:flutter/material.dart';
import 'package:getir_ui/structure/builder.dart';
import 'package:getir_ui/structure/lists.dart';

class kategori extends StatelessWidget {
  final double height;
  final double width;
  final double iconsize;
  final iconText;
  final kategoriText;
  final double fontSize;
  kategori(
      {required this.height,
      required this.width,
      required this.iconsize,
      required this.kategoriText,
      required this.fontSize,
      required this.iconText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: .0, left: 0, top: 0, bottom: 0), //şimdilik boş
      child: SizedBox(
        height: height,
        width: MediaQuery.of(context).size.width * 1,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: iconText.length,
            itemBuilder: (content, index) {
              return ustKategori(
                assetText: iconText[index],
                categoryName: kategoriText[index],
                iconsize: iconsize,
                height: height,
                width: width,
                fontSize: fontSize,
              );
            }),
      ),
    );
  }
}
