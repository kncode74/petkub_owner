import 'package:back_end/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class dog extends StatefulWidget {
  const dog({super.key});

  @override
  State<dog> createState() => _dogState();
}

class _dogState extends State<dog> {
  List<User> _users = [
    User('หมีน้อยสีช็อกโกแลต', 'images/mep.jpg', '6305879', false),
    User('หมีน้อยสีช็อกโกแลต', 'images/mep.jpg', '6305879', false),
    User('หมีน้อยสีช็อกโกแลต', 'images/mep.jpg', '6305879', false),
    User('หมีน้อยสีช็อกโกแลต', 'images/mep.jpg', '6305879', false),
    User('หมีน้อยสีช็อกโกแลต', 'images/mep.jpg', '6305879', false),
    User('หมีน้อยสีช็อกโกแลต', 'images/mep.jpg', '6305879', false),
    User('หมีน้อยสีช็อกโกแลต', 'images/mep.jpg', '6305879', false),
    User('หมีน้อยสีช็อกโกแลต', 'images/mep.jpg', '6305879', false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(83, 129, 36, 1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ข้อมูลสุนัข',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
      body: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          child: Container(
            child: Stack(
              children: [
                Column(
                  children: [
                    search(),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.only(top: 55),
                  child: ListView.builder(
                    itemCount: _users.length,
                    itemBuilder: (context, index) {
                      return userComponent(
                          name: _users[index].name,
                          id: _users[index].id,
                          images: _users[index].images,
                          isdelete: _users[index].isDelete);
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }

  userComponent({name, id, images, isdelete}) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 63,
                height: 63,
                child: ClipRRect(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Color.fromRGBO(159, 203, 114, 1),
                    child: CircleAvatar(
                      radius: 29,
                      backgroundImage: AssetImage(images),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(57, 57, 57, 1)),
                  ),
                  Row(
                    children: [
                      Text(
                        'id:',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(57, 57, 57, 1),
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        id,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(57, 57, 57, 1),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Container(
            height: 40,
            child: MaterialButton(
              elevation: 0,
              color: isdelete ? Colors.grey : Color.fromRGBO(235, 235, 235, 1),
              onPressed: () {
                setState(() {
                  userComponent().isDelete = !userComponent().isDelete;
                });
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                isdelete ? 'ลบออกแล้ว' : 'ลบออก',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget search() => Container(
        height: 40,
        margin: EdgeInsets.all(15),
        child:
            //ค้นหา
            TextField(
          style: TextStyle(color: Color.fromRGBO(229, 227, 227, 1)),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromRGBO(229, 227, 227, 1),
            contentPadding: EdgeInsets.all(0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: BorderSide.none),
            hintText: 'ค้นหา',
            prefixIcon: Icon(Icons.search),
          ),
        ),
      );
}
