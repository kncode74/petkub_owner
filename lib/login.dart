import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Container(
              child: cover(),
            ),
            Container(
              margin: EdgeInsets.only(top: 105),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'เข้าสู่ระบบ PETKUB App',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'สำหรับเจ้าของฟาร์มสุนัข',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  tapSignin(),
                  SizedBox(
                    height: 20,
                  ),
                  tapLogin()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget cover() => Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Image.asset(
            'images/unnamed.webp',
            height: 245,
            fit: BoxFit.cover,
          ),
          Positioned(
              left: 118,
              top: 160,
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
                    height: 175,
                  ),
                ),
              ))
        ],
      );
  Widget profile() => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage('images/logo.png'))),
      );
  Widget tapLogin() => Container(
        margin: EdgeInsets.only(left: 60, right: 60),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            color: Color.fromRGBO(59, 89, 152, 1),
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 2,
                  color: Colors.grey.shade400)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/145/145802.png',
              height: 45,
            ),
            Text(
              'ลงชื่อเข้าใช้ด้วย Facebook',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )
          ],
        ),
      );

  Widget tapSignin() => Container(
        margin: EdgeInsets.only(
          left: 60,
          right: 60,
        ),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 2,
                  color: Colors.grey.shade400)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/145/145802.png',
              height: 45,
            ),
            Text(
              'เข้าสู่ระบบด้วย Facebook',
              style: TextStyle(
                  color: Color.fromRGBO(59, 89, 152, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )
          ],
        ),
      );
}
