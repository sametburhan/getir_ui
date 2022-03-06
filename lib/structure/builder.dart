import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:getir_ui/structure/constant.dart';

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
  final double iconsize;
  final double height;
  final double width;
  final double fontSize;

  ustKategori(
      {required this.assetText,
      this.categoryName,
      required this.iconsize,
      required this.height,
      required this.fontSize,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12.0,
        right: 2,
      ),
      child: SizedBox(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  assetText,
                ),
                iconSize: iconsize,
              ),
              Text(
                categoryName,
                style: TextStyle(fontSize: fontSize),
              ),
            ],
          ),
          height: height,
          width: width,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 192, 192, 192).withOpacity(.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              color: WhiteColor,
              borderRadius: BorderRadius.all(Radius.circular(14))),
        ),
      ),
    );
  }
}

class filtreBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, left: 15),
      child: Container(
        height: MediaQuery.of(context).size.width * .16,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 192, 192, 192).withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ],
            color: WhiteColor,
            borderRadius: BorderRadius.all(Radius.circular(14))),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Row(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.filter_alt,
                    color: BackgroundColor,
                    size: 27,
                  ),
                  onPressed: null),
              TextButton(
                  child: Text(
                    "Filtrele",
                    style: TextStyle(color: BackgroundColor, fontSize: 20),
                  ),
                  onPressed: () {})
            ],
          ),
          Text(
            "|",
            style: TextStyle(
                color: BackgroundColor.withOpacity(.1),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.unfold_more_sharp,
                    color: BackgroundColor,
                    size: 27,
                  ),
                  onPressed: null),
              TextButton(
                child: Text(
                  "Sırala",
                  style: TextStyle(color: BackgroundColor, fontSize: 20),
                ),
                onPressed: () {},
              ),
            ],
          )
        ]),
      ),
    );
  }
}

class mudavimRestoranlari extends StatelessWidget {
  final photo;
  final yildiz;
  final contentYemek;
  final yorumSayisi;
  final sekil;
  final kesityazi;
  final color;
  mudavimRestoranlari(
      {required this.photo,
      required this.yildiz,
      required this.contentYemek,
      required this.yorumSayisi,
      required this.kesityazi,
      required this.color,
      required this.sekil});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.width * 2,
        width: MediaQuery.of(context).size.width * .83,
        child: Stack(
          children: [
            Positioned(
              width: MediaQuery.of(context).size.width * .77,
              height: MediaQuery.of(context).size.width * .4,
              left: 20,
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  child: Image.asset(
                    photo,
                    fit: BoxFit.fill,
                  )),
            ),
            Positioned(
              right: 5,
              top: 2,
              child: IconButton(
                color: Colors.black38,
                icon: Icon(Icons.favorite),
                iconSize: 40,
                onPressed: () {},
              ),
            ),
            Positioned(
              right: 5,
              top: 2,
              child: IconButton(
                color: Colors.white,
                icon: Icon(Icons.favorite_border),
                iconSize: 40,
                onPressed: () {},
              ),
            ),
            Positioned(
              left: 30,
              top: 18,
              child: Stack(
                children: [
                  ClipRect(
                      child: Image.asset(
                    sekil,
                    scale: 2.3,
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.diamond_rounded,
                        color: BackgroundColor,
                      ),
                      Text(
                        kesityazi,
                        style: TextStyle(color: color),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: 15,
              bottom: 50,
              child: Container(
                // height: MediaQuery.of(context).size.width * .08,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(7))),
                padding: EdgeInsets.only(right: 5, left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      size: 25,
                      color: BackgroundColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      yildiz,
                      style: TextStyle(color: BackgroundColor, fontSize: 18),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      yorumSayisi,
                      style: TextStyle(color: Colors.black38, fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                left: 30,
                bottom: 50,
                child: Icon(
                  Icons.camera_alt_rounded,
                  color: BackgroundColor,
                  size: 30,
                )),
            Positioned(
                left: 22,
                bottom: 0,
                child: Text(
                  contentYemek,
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ));
  }
}

class yemekListesi extends StatelessWidget {
  final yemekGorseli;
  final saticiAdi;
  final ucret;
  final sure;
  final puan;
  final yorumSayisi;
  final indirim;
  yemekListesi({
    required this.yemekGorseli,
    required this.saticiAdi,
    required this.indirim,
    required this.puan,
    required this.sure,
    required this.ucret,
    required this.yorumSayisi,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * .30,
      width: MediaQuery.of(context).size.width * 1,
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 4),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Container(
                    height: 85,
                    width: 88,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Image.asset(
                      yemekGorseli,
                      fit: BoxFit.fill,
                    )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    saticiAdi,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/R.png",
                        scale: 3,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(sure,
                          style:
                              TextStyle(fontSize: 15, color: Colors.black54)),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.circle,
                        size: 5,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(ucret,
                          style:
                              TextStyle(fontSize: 15, color: Colors.black54)),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width * .08,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 192, 192, 192)
                                .withOpacity(.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                    padding: EdgeInsets.only(right: 5, left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          size: 25,
                          color: BackgroundColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          puan,
                          style:
                              TextStyle(color: BackgroundColor, fontSize: 18),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          yorumSayisi,
                          style: TextStyle(color: Colors.black38, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  SizedBox(),
                  IconButton(
                    color: BackgroundColor.withOpacity(.3),
                    icon: Icon(Icons.favorite_border),
                    iconSize: 40,
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(14)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 192, 192, 192).withOpacity(.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ],
          ),
        ),
      ),
    );
  }
}
