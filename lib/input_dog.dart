import 'package:back_end/home_page.dart';
import 'package:flutter/material.dart';

class InputDog extends StatefulWidget {
  const InputDog({super.key});

  @override
  State<InputDog> createState() => _InputDogState();
}

class _InputDogState extends State<InputDog> {
  static const double defaltPadding = 16.0;

  //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            cover(),
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ลงทะเบียนสัตว์เลี้ยง',
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'กรอกข้อมูลสำหรับสุนัข',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding:
              //เลื่อนขึ้นลอดตรงตำแหน่ง top
              const EdgeInsets.only(top: 295, left: 8, right: 8, bottom: 8),
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      formComponent1('รหัสประจำตัว', 'กรอกรหัสประจำตัว 8 หลัก')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      formComponent2(
                          'ชื่อ', 'กรอกชื่อ', 'นามสกุล', 'กรอกนามสกุล')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      formComponent1(
                          'วัน/เดือน/ปีเกิด', 'กรอกวันเดือนปีเกิด 00/00/0000')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [formComponent1('เพศ', 'ตัวเลือก')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [formComponent1('พันธุ์', 'ตัวเลือก')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      formComponent2(
                          'ส่วนสูง', 'กรอกส่วนสูง', 'น้ำหนัก', 'กรอกน้ำหนัก')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [formComponent1('สี', 'กรอกสี')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [formComponent1('พ่อพันธุ์', 'ตัวเลือก')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [formComponent1('แม่พันธุ์', 'ตัวเลือก')],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 155,
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(215, 215, 215, 1)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            child: const Text(
                              'ยกเลิก',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        SizedBox(
                          width: 155,
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(83, 129, 36, 1)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            child: const Text(
                              'ยืนยัน',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }

  formComponent2(
      String textTitle1, String textIn1, String textTitle2, String textIn2) {
    return Container(
        padding: const EdgeInsets.only(bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Container(
                padding: const EdgeInsets.all(2.0),
                width: 170,
                child: Text(textTitle1, style: const TextStyle(fontSize: 16)),
              ),
              const SizedBox(
                width: defaltPadding,
              ),
              Container(
                padding: const EdgeInsets.all(2.0),
                width: 150,
                child: Text(
                  textTitle2,
                  style: const TextStyle(fontSize: 16),
                ),
              )
            ]),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  width: 170,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(215, 215, 215, 1),
                  ),
                  child: Expanded(
                    child: TextFormField(
                      //ตรวจสอบค่าว่าง
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'กรอกข้อมูลให้ครบถ้วน';
                        } else
                          null;
                      },
                      decoration: InputDecoration(
                          hintText: textIn1, border: InputBorder.none),
                    ),
                  ),
                ),
                const SizedBox(
                  width: defaltPadding,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  width: 167,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(215, 215, 215, 1),
                  ),
                  child: Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: textIn2, border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }

  formComponent1(String textTitle, String textIn) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  textTitle,
                  style: const TextStyle(
                      fontSize: 16, color: Color.fromRGBO(72, 71, 71, 1)),
                ),
              )
            ],
          ),
          Container(
            width: 350,
            height: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromRGBO(215, 215, 215, 1),
            ),
            padding: const EdgeInsets.only(left: 15),
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
      ),
    );
  }

  Widget cover() => Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          SizedBox(
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
                          offset: const Offset(1, 5),
                          color: Colors.grey.shade300),
                    ]),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(24),
                  ),
                  child: Image.asset(
                    'images/logo.png',
                    height: 130,
                  ),
                ),
              )),
        ],
      );
}
