import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class inputDog extends StatefulWidget {
  const inputDog({super.key});

  @override
  State<inputDog> createState() => _inputDogState();
}

class _inputDogState extends State<inputDog> {
  static const double defaltPadding = 16.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            cover(),
            Container(
              padding: EdgeInsets.only(top: 55),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ลงทะเบียนสัตว์เลี้ยง',
                        style: TextStyle(
                            fontSize: 34, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'กรอกข้อมูลสำหรับสุนัข',
                        style: TextStyle(
                            fontSize: 18, color: Color.fromRGBO(72, 71, 71, 1)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 40, left: 40, bottom: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      formComponent2('ชื่อ', 'กรอกชื่อ'),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [],
                      ),
                      formComponent1(
                          'วัน/เดือน/ปีเกิด', 'กรอกวันเดือนปีเกิด 00/00/0000'),
                      formComponent1('เพศ', 'ตัวเลือก'),
                      formComponent1('พันธุ์', 'ตัวเลือก')
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  formComponent2(String textTitle, String textIn) {
    return Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [Text('dkfjh')],
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  width: 150,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(215, 215, 215, 1),
                  ),
                  child: Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'กรอกชื่อ', border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(
                  width: defaltPadding,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  width: 150,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(215, 215, 215, 1),
                  ),
                  child: Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'กรอกชื่อ', border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  formComponent1(String textTitle, String textIn) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                textTitle,
                style: TextStyle(
                    fontSize: 16, color: Color.fromRGBO(72, 71, 71, 1)),
              ),
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromRGBO(215, 215, 215, 1),
          ),
          padding: EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                    decoration: InputDecoration(
                        hintText: textIn, border: InputBorder.none)),
              ),
            ],
          ),
        )
      ],
    ));
  }

  Widget cover() => Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            width: 500,
            height: 159,
            child: Image.asset(
              'images/unnamed.webp',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              left: 140,
              right: 140,
              top: 70,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(1, 5), color: Colors.grey.shade300),
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ),
                  child: Image.asset(
                    'images/logo.png',
                    height: 130,
                  ),
                ),
              ))
        ],
      );
}
