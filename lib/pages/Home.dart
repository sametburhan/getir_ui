import 'package:flutter/material.dart';
import 'package:getir_ui/structure/adreswidget.dart';
import 'package:getir_ui/structure/araYazilar.dart';
import 'package:getir_ui/structure/constant.dart';
import 'package:getir_ui/structure/builder.dart';
import 'package:getir_ui/structure/dikeyListe.dart';
import 'package:getir_ui/structure/kategori.dart';
import 'package:getir_ui/structure/lists.dart';
import 'package:getir_ui/structure/ustReklam.dart';
import 'package:getir_ui/structure/yatayListe.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  Future<void> _onrefresh() async {
    await Future.delayed(Duration(milliseconds: 400));
  }

  @override
  Widget build(BuildContext context) {
    bool _visible = true;
    return Stack(
      children: [
        homePageContent(),
        adresWidget(),
        Visibility(
          visible: _visible,
          child: Positioned(
              top: MediaQuery.of(context).size.width * .20,
              width: MediaQuery.of(context).size.width * 1,
              child: filtreBuild()),
        ),
      ],
    );
  }

  Widget homePageContent() {
    return RefreshIndicator(
      onRefresh: _onrefresh,
      edgeOffset: 20,
      displacement: 80,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * .15,
            ),
            ustReklam(),
            SizedBox(
              height: 20,
            ),
            kategori(
              iconsize: 40,
              fontSize: 14,
              height: MediaQuery.of(context).size.width * .18,
              width: MediaQuery.of(context).size.width * 0.21,
              iconText: kategoryIcons,
              kategoriText: kategoryText,
            ),
            SizedBox(
              height: 20,
            ),
            filtreBuild(),
            araYazilar(
              text1: "Müdavim Restoranları",
              text2: "Tümünü Gör (109)",
              visible: false,
              color: BackgroundColor,
              icon: Icons.abc,
            ),
            yatayListe(
                first: mudavimContent,
                second: mudavimPhoto,
                third: mudavimYildiz,
                fourth: yorumSayisi,
                fifth: "assets/mudavimKesit.png",
                sixth: "   Müdavim +25 TL indirim",
                seventh: BackgroundColor),
            araYazilar(
              text1: "Keşfet",
              text2: "Tümünü Gör (27)",
              visible: false,
              color: BackgroundColor,
              icon: Icons.abc,
            ),
            yatayListe(
                first: kesfetContent,
                second: kesfetPhoto,
                third: kesfetYildiz,
                fourth: kesfetyorumSayisi,
                fifth: "assets/kesfetKesit.png",
                sixth: "Yeni",
                seventh: Colors.white),
            araYazilar(
              text1: "Mutfaklar",
              text2: "",
              color: BackgroundColor,
              icon: Icons.menu_open_rounded,
              visible: false,
            ),
            kategori(
                iconsize: 63,
                height: MediaQuery.of(context).size.width * .25,
                iconText: iconTextlist,
                kategoriText: kategoriTextlist,
                fontSize: 18,
                width: MediaQuery.of(context).size.width * .35),
            araYazilar(
              text1: "Tüm Restoranlar (471)",
              text2: "Görünüm",
              visible: true,
              color: Colors.black38,
              icon: Icons.view_day_outlined,
            ),
            dikeyListe(
              indirim: indirim,
              puan: puan,
              saticiAdi: saticiAdi,
              sure: sure,
              ucret: ucret,
              yemekGorseli: yemekGorseli,
              yorumSayisi: yorumSayisi,
            ),
            SizedBox(
              //silincek
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
