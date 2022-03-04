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
