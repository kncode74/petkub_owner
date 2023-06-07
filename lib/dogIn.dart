import 'package:back_end/dog.dart';
import 'package:back_end/home_page.dart';
import 'package:back_end/photodog.dart';
import 'package:back_end/pedigree.dart';
import 'package:back_end/vaccine.dart';
import 'package:back_end/datadog.dart';
import 'package:flutter/material.dart';

class DogIn extends StatefulWidget {
  const DogIn({super.key});

  @override
  State<DogIn> createState() => _DogInState();
}

class _DogInState extends State<DogIn> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  icon: Image.asset(
                    'images/back.png',
                    color: Colors.black,
                  )),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'ID : 6305879',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(57, 57, 57, 1)),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 15),
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
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 5,
            ),
            const TabBar(
              indicatorColor: Color.fromRGBO(159, 203, 114, 1),
              tabs: [
                Tab(
                  child: Text(
                    'ข้อมูลสุนัข',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                    child: Text(
                  'รูปภาพ',
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
            const Expanded(
                child: TabBarView(
              children: [DataOfDog(), PhotoOfDog(), VacCine(), pedigree()],
            ))
          ],
        ),
      ),
    );
  }
}
