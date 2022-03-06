import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:getir_ui/structure/builder.dart';
import 'package:getir_ui/structure/lists.dart';

class dikeyListe extends StatelessWidget {
  final indirim;
  final puan;
  final saticiAdi;
  final sure;
  final ucret;
  final yemekGorseli;
  final yorumSayisi;
  final visible;
  dikeyListe(
      {required this.indirim,
      required this.puan,
      required this.saticiAdi,
      required this.sure,
      required this.ucret,
      required this.yemekGorseli,
      required this.visible,
      required this.yorumSayisi});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 2,
      child: ListView.builder(
          physics:
              const NeverScrollableScrollPhysics(), //scroll yapısını kapatır
          itemCount: yemekGorseli.length,
          itemBuilder: (context, index) {
            return yemekListesi(
              indirim: indirim[index],
              puan: puan[index],
              saticiAdi: saticiAdi[index],
              sure: sure[index],
              ucret: ucret[index],
              yemekGorseli: yemekGorseli[index],
              yorumSayisi: yorumSayisi[index],
              visible: visible[index],
            );
          }),
    );
  }
}
