import 'package:flutter/material.dart';
import 'package:getir_ui/structure/builder.dart';
import 'package:getir_ui/structure/lists.dart';

class kategori extends StatefulWidget {
  const kategori({Key? key}) : super(key: key);

  @override
  State<kategori> createState() => _kategoriState();
}

class _kategoriState extends State<kategori> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: 15.0, left: 15, top: 20, bottom: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.width * .18,
        width: MediaQuery.of(context).size.width * 1,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: kategoryIcons.length,
            itemBuilder: (content, index) {
              return ustKategori(
                assetText: kategoryIcons[index],
                categoryName: kategoryText[index],
              );
            }),
      ),
    );
  }
}
