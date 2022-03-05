import 'package:flutter/material.dart';
import 'package:getir_ui/structure/builder.dart';
import 'package:getir_ui/structure/lists.dart';

class ustReklam extends StatelessWidget {
  const ustReklam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 1,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        //itemCount: photo.length,
        itemBuilder: (BuildContext context, int index) {
          return ustPhoto(
            assetText: photo[index % photo.length],
          );
        },
      ),
    );
  }
}
