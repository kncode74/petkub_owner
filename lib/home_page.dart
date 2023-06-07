import 'package:back_end/other.dart';
import 'package:back_end/dog.dart';
import 'package:back_end/homep.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;
  void _navigateBottomNavibar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _tapList = [const Home(), const Dog(), const Other()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _tapList.elementAt(_selectIndex),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 3),
          child: Align(
            alignment: const Alignment(0.0, 1.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(50),
              ),
              child: BottomNavigationBar(
                showSelectedLabels: true,
                showUnselectedLabels: false,
                backgroundColor: const Color.fromRGBO(240, 239, 239, 1),
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
