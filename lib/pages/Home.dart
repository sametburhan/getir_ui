import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getir_ui/constant.dart';
import 'package:getir_ui/reklam.dart';

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
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
              child: Icon(
                Icons.home_filled,
                color: YellowColor,
                size: 27,
              ),
            ),
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
                            color: Colors.black26,
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
      homePageContent(),
    ]);
  }

  Widget homePageContent() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * .15,
          ),
          ustReklam()
        ],
      ),
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
            assetText: photo[index],
          );
        },
      ),
    );
  }
}
