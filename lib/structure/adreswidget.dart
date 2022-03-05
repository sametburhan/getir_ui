import 'package:flutter/material.dart';
import 'package:getir_ui/structure/builder.dart';
import 'package:getir_ui/structure/constant.dart';
import 'package:getir_ui/pages/Home.dart';

class adresWidget extends StatelessWidget {
  const adresWidget({Key? key}) : super(key: key);

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
    ]);
  }
}
