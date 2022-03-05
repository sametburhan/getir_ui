import 'package:flutter/material.dart';
import 'package:getir_ui/constant.dart';
import 'package:getir_ui/builder.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List photo = [
    "assets/reklam/reklam1.png",
    "assets/reklam/reklam2.png",
    "assets/reklam/reklam3.png",
    "assets/reklam/reklam4.png",
    "assets/reklam/reklam5.png",
    "assets/reklam/reklam6.png",
  ];
  List yorumSayisi = ["(20+)", "(50+)", "(750+)", "(200+)", "(100+)"];
  List kategoryIcons = [
    "assets/kategori/1.png",
    "assets/kategori/2.png",
    "assets/kategori/3.png",
    "assets/kategori/4.png",
  ];
  List kategoryText = ["Ne Yesem?", "Müdavim", "Siparişlerim", "Favorilerim"];
  List mudavimContent = [
    "Taç Mangal (Altıntepsi Mah.)",
    "Hero's Pizza (Abdurrahman Nafiz G..",
    "Hero's Pizza (Sanayi Mah)",
    "Kebap ve Lahmacun Dünyası (Mer...",
    "Bağdatlı Ocakbaşı (Merkez Mah.)"
  ];
  List mudavimPhoto = [
    "assets/mudavim/a.jpg",
    "assets/mudavim/b.jpg",
    "assets/mudavim/c.jpg",
    "assets/mudavim/d.jpg",
    "assets/mudavim/e.jpg"
  ];
  List mudavimYildiz = ["4.2", "4.1", "4.3", "3.8", "4.0"];

  //fit: BoxFit.fill,
  Future<void> _onrefresh() async {
    await Future.delayed(Duration(milliseconds: 400));
  }

  @override
  Widget build(BuildContext context) {
    bool _visible = false;

    return Stack(children: [
      homePageContent(),
      Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Padding(
            padding: const EdgeInsets.all(
              12,
            ),
            child: Column(
              children: [
                Text(
                  "TVS",
                  style: TextStyle(fontSize: 14, color: BackgroundColor),
                ),
                Text(
                  "10-40 dk",
                  style: TextStyle(
                      fontSize: 18,
                      color: BackgroundColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ]),
        height: MediaQuery.of(context).size.width * .15,
        decoration: BoxDecoration(
          color: YellowColor,
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.width * .15,
        width: MediaQuery.of(context).size.width * .75,
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Image.asset(
                  "assets/topHome.png",
                  scale: 9,
                )),
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        "|",
                        style: TextStyle(
                            fontSize: 23,
                            color: BackgroundColor.withOpacity(0.2),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Ev",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Text(
                        "Adres, adres...",
                        style: TextStyle(fontSize: 18, color: Colors.black38),
                      ),
                    )
                  ],
                )),
            Expanded(
              flex: 1,
              child: InkWell(
                  onTap: () {},
                  child: Container(
                      child: Icon(
                    Icons.arrow_forward_ios,
                    size: 25.0,
                    color: BackgroundColor,
                  ))),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: WhiteColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(100),
            topRight: Radius.circular(100),
          ),
        ),
      ),
      Visibility(
        visible: _visible,
        child: Positioned(
            top: MediaQuery.of(context).size.width * .20,
            width: MediaQuery.of(context).size.width * 1,
            child: filtreBuild()),
      ),
    ]);
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
            mudavim(),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              height: MediaQuery.of(context).size.width * .53,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: MudavimRestoran(),
            ),
            SizedBox(
              height: 200,
            )
          ],
        ),
      ),
    );
  }

  Widget MudavimRestoran() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: mudavimYildiz.length,
      itemBuilder: (context, index) {
        return mudavimRestoranlari(
          contentYemek: mudavimContent[index],
          photo: mudavimPhoto[index],
          yildiz: mudavimYildiz[index],
          yorumSayisi: yorumSayisi[index],
        );
      },
    );
  }

  Widget ustReklam() {
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

  Widget kategori() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          deneme(context, 0),
          deneme(context, 1),
          deneme(context, 2),
          deneme(context, 3)
        ],
      ),
    );
  }

  Widget deneme(BuildContext context, int index) {
    return ustKategori(
      assetText: kategoryIcons[index],
      categoryName: kategoryText[index],
    );
  }

  Widget mudavim() {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Müdavim Restoranları",
            style: TextStyle(fontSize: 17),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Tümünü Gör (109)",
                style: TextStyle(color: BackgroundColor, fontSize: 17),
              ))
        ],
      ),
    );
  }
}
