import 'dart:ui';

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

class filtreBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20),
      child: Container(
        height: MediaQuery.of(context).size.width * .16,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 192, 192, 192).withOpacity(0.2),
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
  mudavimRestoranlari(
      {required this.photo,
      required this.yildiz,
      required this.contentYemek,
      required this.yorumSayisi});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.width * 2,
        width: MediaQuery.of(context).size.width * .83,
        child: Stack(
          children: [
            Positioned(
              width: MediaQuery.of(context).size.width * .8,
              height: MediaQuery.of(context).size.width * .4,
              left: 10,
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
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
              left: 25,
              top: 18,
              child: Stack(
                children: [
                  ClipRect(
                      child: Image.asset(
                    "assets/mudavimKesit.png",
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
                        "   Müdavim +25 TL indirim",
                        style: TextStyle(color: BackgroundColor),
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
                height: MediaQuery.of(context).size.width * .08,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(7))),
                padding: EdgeInsets.only(right: 5, left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star_half_rounded,
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
                left: 25,
                bottom: 50,
                child: Icon(
                  Icons.camera_alt_rounded,
                  color: BackgroundColor,
                  size: 30,
                )),
            Positioned(
                left: 15,
                bottom: 0,
                child: Text(
                  contentYemek,
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ));
  }
}
