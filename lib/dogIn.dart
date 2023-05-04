import 'package:back_end/dog.dart';
import 'package:back_end/old.dart';
import 'package:back_end/pedigree.dart';
import 'package:back_end/vaccine.dart';
import 'package:back_end/young.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class dogIn extends StatefulWidget {
  const dogIn({super.key});

  @override
  State<dogIn> createState() => _dogInState();
}

class _dogInState extends State<dogIn> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => dog()));
                  },
                  icon: Image.asset('images/back.png')),
              SizedBox(
                width: 90,
              ),
              Text(
                'ID : 6305879',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(57, 57, 57, 1)),
              ),
            ],
          ),
        ),
        body: Container(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundColor: Color.fromRGBO(159, 203, 114, 1),
                        child: CircleAvatar(
                            radius: 41,
                            backgroundImage: NetworkImage(
                                'https://i.pinimg.com/564x/37/eb/63/37eb6396fecf5fb0d67ece60a890e949.jpg')),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'หมีน้อยสีช็อกโกแลต',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(57, 57, 57, 1)),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'อายุ 8 เดือน ',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(57, 57, 57, 1)),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'วันเกิด 2 ตุลาคม 2565 ',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(57, 57, 57, 1)),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 155,
                      height: 33,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'แก้ไขข้อมูล',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(57, 57, 57, 1)),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(235, 235, 235, 1)),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      width: 155,
                      height: 33,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'สแกนจมูก',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(57, 57, 57, 1)),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(235, 235, 235, 1)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                TabBar(
                  indicatorColor: Color.fromRGBO(159, 203, 114, 1),
                  tabs: [
                    Tab(
                      child: Text(
                        'ตอนเด็ก',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Tab(
                        child: Text(
                      'ตอนโต',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )),
                    Tab(
                        child: Text(
                      'วัคซีน',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )),
                    Tab(
                      child: Text(
                        'Pedigree',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Expanded(
                    child: TabBarView(
                  children: [young(), old(), vaccine(), pedigree()],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
