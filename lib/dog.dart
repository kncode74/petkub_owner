import 'package:back_end/dogIn.dart';
import 'package:back_end/user.dart';
import 'package:flutter/material.dart';

class Dog extends StatefulWidget {
  const Dog({super.key});

  @override
  State<Dog> createState() => _DogState();
}

class _DogState extends State<Dog> {
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
          backgroundColor: const Color.fromRGBO(83, 129, 36, 1),
          title: const Row(
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
          padding: const EdgeInsets.only(left: 20, right: 20),
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  search(),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DogIn()));
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 55),
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
                ),
              )
            ],
          ),
        ));
  }

  userComponent({name, id, images, isdelete}) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 63,
                height: 63,
                child: ClipRRect(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: const Color.fromRGBO(159, 203, 114, 1),
                    child: CircleAvatar(
                      radius: 29,
                      backgroundImage: AssetImage(images),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(57, 57, 57, 1)),
                  ),
                  Row(
                    children: [
                      const Text(
                        'id:',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(57, 57, 57, 1),
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        id,
                        style: const TextStyle(
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
          SizedBox(
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
                style: const TextStyle(
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
        margin: const EdgeInsets.all(15),
        child:
            //ค้นหา
            TextField(
          style: const TextStyle(color: Color.fromRGBO(229, 227, 227, 1)),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromRGBO(229, 227, 227, 1),
            contentPadding: const EdgeInsets.all(0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: BorderSide.none),
            hintText: 'ค้นหา',
            prefixIcon: const Icon(Icons.search),
          ),
        ),
      );
}
