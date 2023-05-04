import 'package:flutter/material.dart';
import 'package:back_end/homep.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class other extends StatelessWidget {
  const other({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 247, 247, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(83, 129, 36, 1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ข้อมูลส่วนตัว',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            Stack(
              children: [profile()],
            ),
            SizedBox(
              height: 20,
            ),
            Positioned(
                top: 210,
                left: 41,
                child: Column(
                  children: [
                    dataUser('ชื่อผู้ใช้', 'ขวัญนภา ไทยจันทึก'),
                    dataUser('User id', '03214589960125'),
                    dataUserNO('เบอร์มือถือ', '088-9988-245'),
                    dataUserNO(
                        'ที่อยู่', '99/3 หมู่ 2 แขวงหนมปังปิ้ง  กรุงเทพฯ'),
                    dataUserNO('E-mail', 'Kanompungping@Whatmail.com')
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget dataUserNO(String title1, String data1) => Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      left: BorderSide(
                    color: Color.fromRGBO(159, 203, 114, 1),
                    width: 6,
                  )),
                ),
                width: 330,
                height: 57,
                child: Container(
                  height: 3,
                  padding: EdgeInsets.only(top: 5, left: 10),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 100),
                        child: Row(
                          children: [
                            Text(
                              title1,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 25),
                        child: Row(children: [Text(data1)]),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      );
  Widget dataUser(String title, String data) => Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      left: BorderSide(
                    color: Color.fromRGBO(159, 203, 114, 1),
                    width: 6,
                  )),
                ),
                width: 330,
                height: 57,
                child: Container(
                  height: 3,
                  padding: EdgeInsets.only(top: 5, left: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 100),
                            child: Row(
                              children: [
                                Text(
                                  title,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 5),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text(data)]),
                          )
                        ],
                      ),
                      Container(
                        width: 170,
                        padding: EdgeInsets.only(left: 50),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 24,
                                  width: 58,
                                  child: MaterialButton(
                                    elevation: 0,
                                    color: Color.fromRGBO(159, 203, 114, 1),
                                    onPressed: () {},
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      'แก้ไข',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      );

  Widget profile() => Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 75,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              height: 123,
              width: 330,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ขวัญนภา ไทยจันทึก',
                        style: TextStyle(
                            color: Color.fromRGBO(159, 203, 114, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ฟาร์มฮีโร่ปอม ',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(57, 57, 57, 1)),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 16,
            left: 100,
            right: 100,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                  radius: 45, backgroundImage: AssetImage('images/mep.jpg')),
            ),
          ),
        ],
      );
}
