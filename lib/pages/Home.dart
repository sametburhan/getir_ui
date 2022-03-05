import 'package:flutter/material.dart';
import 'package:getir_ui/structure/adreswidget.dart';
import 'package:getir_ui/structure/araYazilar.dart';
import 'package:getir_ui/structure/constant.dart';
import 'package:getir_ui/structure/builder.dart';
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
            kategori(),
            filtreBuild(),
            araYazilar(
              text1: "Müdavim Restoranları",
              text2: "Tümünü Gör (109)",
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
            ),
            yatayListe(
                first: kesfetContent,
                second: kesfetPhoto,
                third: kesfetYildiz,
                fourth: kesfetyorumSayisi,
                fifth: "assets/kesfetKesit.png",
                sixth: "Yeni",
                seventh: Colors.white),
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
