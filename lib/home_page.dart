import 'package:back_end/other.dart';
import 'package:back_end/dog.dart';
import 'package:back_end/homep.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _selectIndex = 0;
  void _navigateBottomNavibar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _tapList = [home(), dog(), other()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _tapList.elementAt(_selectIndex),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 3),
          child: Align(
            alignment: Alignment(0.0, 1.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              child: BottomNavigationBar(
                showSelectedLabels: true,
                showUnselectedLabels: false,
                backgroundColor: Color.fromRGBO(240, 239, 239, 1),
                onTap: (int index) {
                  setState(() {
                    _selectIndex = index;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        'images/home.png',
                        height: 34,
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        'images/pawprint.png',
                        height: 32,
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        'images/menu.png',
                        height: 32,
                      ),
                      label: ''),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
