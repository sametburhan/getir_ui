import 'package:flutter/material.dart';
import 'package:getir_ui/structure/constant.dart';
import 'package:getir_ui/pages/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
// TextEditingController searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      extendBody: true,
      appBar: appbarSelector(),
      body: pageSelector(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            label: "Gift",
            icon: Icon(
              Icons.card_giftcard_rounded,
            ),
          ),
        ],
        iconSize: 30,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: BackgroundColor,
        unselectedItemColor: Colors.black38,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: BackgroundColor,
        child: Image.asset(
          "assets/centerIcon.png",
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  pageSelector() {
    if (_selectedIndex == 0) {
      return const homePage();
    } else if (_selectedIndex == 1) {
      return Container(); //değişcek
    } else if (_selectedIndex == 2) {
      return Container(); //değişcek
    } else if (_selectedIndex == 3) {
      return Container(); //değişcek
    }
  }

  appbarSelector() {
    if (_selectedIndex == 0) {
      return AppBar(
        backgroundColor: BackgroundColor,
        title: Container(
          width: 130,
          child: Image.asset("assets/getir.png"),
        ),
        centerTitle: true,
      );
    } else if (_selectedIndex == 1) {
      return AppBar(
        backgroundColor: BackgroundColor,
        title: Container(
          child: Text("Arama"),
        ),
        centerTitle: true,
      ); //değişcek
    } else if (_selectedIndex == 2) {
      return AppBar(
        backgroundColor: BackgroundColor,
        title: Container(
          child: Text("Profil"),
        ),
        centerTitle: true,
      ); //değişcek
    } else if (_selectedIndex == 3) {
      return AppBar(
        backgroundColor: BackgroundColor,
        title: Container(
          width: 130,
          child: Image.asset("assets/getir.png"),
        ),
        centerTitle: true,
      ); //değişcek
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
