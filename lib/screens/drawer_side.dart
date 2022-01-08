import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_style_app/screens/contact.dart';
import 'package:life_style_app/screens/home_screen.dart';
import 'package:life_style_app/service/phone_service.dart';
import 'package:life_style_app/shop/shop_home.dart';

class DrawerSide extends StatefulWidget {
  @override
  _DrawerSideState createState() => _DrawerSideState();
}

class _DrawerSideState extends State<DrawerSide> {
  PhoneService auth = PhoneService();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: double.infinity,
      decoration: BoxDecoration(
          color: Colors.transparent,
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 2.0,
            )
          ],
          border: Border(
              right: BorderSide(
            color: Colors.white70,
          ))),
      child: Stack(
        children: [
          SizedBox(
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 2.0,
                  sigmaY: 2.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.grey.withOpacity(0.0),
                    Colors.white.withOpacity(0.2),
                  ])),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: DrawerHeader(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white70,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(auth.user!.photoURL ??
                              'https://s3.envato.com/files/328957910/vegi_thumb.png'),
                          radius: 38,
                          backgroundColor: Color(0xffd4d181),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        auth.user!.displayName ?? 'Abcd',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        auth.user!.email ?? '12345@gmail.com',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 13.0),
                    child: ListView(
                      children: [
                        ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => HomeScreen()));
                          },
                          leading: Icon(
                            CupertinoIcons.home,
                            color: Colors.white,
                            size: 33,
                          ),
                          title: Text(
                            "القائمة الرئيسة",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                        ListTile(
                          onTap: () {},
                          leading: Image.asset(
                            'assets/icons/gain.png',
                            height: 35,
                            color: Colors.white,
                          ),
                          title: Text(
                            "زيادة الوزن",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                        ListTile(
                          onTap: () {},
                          leading: Image.asset(
                            'assets/icons/loss.png',
                            height: 35,
                            color: Colors.white,
                          ),
                          title: Text(
                            "خسارة الوزن",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                        ListTile(
                          onTap: () {},
                          leading: Image.asset(
                            'assets/icons/diet.png',
                            height: 35,
                            color: Colors.white,
                          ),
                          title: Text(
                            "النظام الغذائي",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                        ListTile(
                          onTap: () {},
                          leading: Image.asset(
                            'assets/icons/shoes.png',
                            height: 35,
                            color: Colors.white,
                          ),
                          title: Text(
                            "تمارين رياضية",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                        ListTile(
                          onTap: () {},
                          leading: Image.asset(
                            'assets/icons/advice.png',
                            height: 35,
                            color: Colors.white,
                          ),
                          title: Text(
                            "نصائح صحية عامة",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                        ListTile(
                          onTap: () {},
                          leading: Image.asset(
                            'assets/icons/settings.png',
                            height: 35,
                            color: Colors.white,
                          ),
                          title: Text(
                            "إعدادات حسابك",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => ShopHome()));
                          },
                          leading: Image.asset(
                            'assets/icons/shore.png',
                            height: 35,
                            color: Colors.white,
                          ),
                          title: Text(
                            "المتجر",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => ContactUs()));
                          },
                          leading: Icon(
                            CupertinoIcons.phone,
                            color: Colors.white,
                            size: 33,
                          ),
                          title: Text(
                            "الاتصال بنا",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/fb.png',
                      height: 25,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/icons/instagram.png',
                      height: 25,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/icons/whatsapp.png',
                      height: 25,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
