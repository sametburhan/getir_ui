import 'package:flutter/material.dart';
import 'package:getir_ui/structure/builder.dart';
import 'package:getir_ui/structure/lists.dart';

class yatayListe extends StatelessWidget {
  final first;
  final second;
  final third;
  final fourth;
  final fifth;
  final sixth;
  final seventh;
  yatayListe(
      {this.first,
      this.second,
      this.third,
      this.fourth,
      this.fifth,
      this.sixth,
      this.seventh});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mudavimYildiz.length,
        itemBuilder: (context, index) {
          return mudavimRestoranlari(
            contentYemek: first[index],
            photo: second[index],
            yildiz: third[index],
            yorumSayisi: fourth[index],
            sekil: fifth,
            kesityazi: sixth,
            color: seventh,
          );
        });
  }
}
