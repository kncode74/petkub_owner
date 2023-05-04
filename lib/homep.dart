import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(83, 129, 36, 1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'หน้าหลัก',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
      body: Container(
        child: Container(
          child: Column(
            children: [
              userName(),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 102,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(146, 200, 91, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/pawprint.png',
                              height: 33,
                            ),
                            Text('บางนา'),
                            Text('กรุงเทพมหานคร')
                          ]),
                    ),
                    Container(
                      height: 102,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(148, 192, 103, 1),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, bottom: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 102,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(202, 15, 15, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/pawprint.png',
                              height: 33,
                            ),
                            Text('บางนา'),
                            Text('กรุงเทพมหานคร')
                          ]),
                    ),
                    Container(
                      height: 102,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(101, 158, 43, 1),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 127,
                          width: 360,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(188, 255, 119, 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'ลงทะเบียนสุนัข',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )
                              ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 127,
                          width: 360,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(159, 203, 114, 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Website',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )
                              ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget userName() => Container(
        padding: EdgeInsets.only(left: 30, top: 8),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Color.fromRGBO(159, 203, 114, 1),
              radius: 32,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/mep.jpg'),
                radius: 29,
              ),
            ),
            Text(
              '    ฟาร์มของขวัญ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(72, 71, 71, 1),
              ),
            ),
          ],
        ),
      );
}
