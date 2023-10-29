import 'package:flutter/material.dart';
import 'package:rentabike/HomePage.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    final PageController _pageController = PageController();

    void tapItem(int index) {
      setState(() {
        _currentIndex = index;
      });
      _pageController.animateToPage(index,
          duration: Duration(microseconds: 300), curve: Curves.easeInOut);
    }

    @override
    void dispose() {
      _pageController.dispose();
      super.dispose();
    }

    return Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: <Widget>[
            HomePage(),
            Center(child: CircularProgressIndicator()),
            Center(child: CircularProgressIndicator()),
            Center(child: CircularProgressIndicator()),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: tapItem,
          items: [
            BottomNavigationBarItem(
                icon: Column(children: [
                  SizedBox(
                    height: 10,
                  ),
                  ImageIcon(
                    AssetImage("assets/Home.png"),
                    color: Colors.black,
                    size: 30,
                  ),
                ]),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/Map Marker.png"),
                  color: Colors.black,
                  size: 30,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/Card Wallet.png"),
                  color: Colors.black,
                  size: 30,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/Settings.png"),
                  color: Colors.black,
                  size: 30,
                ),
                label: ""),
          ],
        ));
  }
}
