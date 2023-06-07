import 'package:back_end/input_dog.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(83, 129, 36, 1),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'หน้าหลัก',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
      body: Column(
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
                      color: const Color.fromRGBO(146, 200, 91, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/pawprint.png',
                          height: 33,
                        ),
                        const Text('บางนา'),
                        const Text('กรุงเทพมหานคร')
                      ]),
                ),
                Container(
                  height: 102,
                  width: 170,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(148, 192, 103, 1),
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
                      color: const Color.fromRGBO(202, 15, 15, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/pawprint.png',
                          height: 33,
                        ),
                        const Text('บางนา'),
                        const Text('กรุงเทพมหานคร')
                      ]),
                ),
                Container(
                  height: 102,
                  width: 170,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(101, 158, 43, 1),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => InputDog()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 127,
                        width: 360,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(188, 255, 119, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 127,
                      width: 360,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(159, 203, 114, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Column(
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
    );
  }

  Widget userName() => Container(
        padding: const EdgeInsets.only(left: 30, top: 8),
        child: const Row(
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
