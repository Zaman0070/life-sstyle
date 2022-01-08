
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:life_style_app/screens/female/diet_plane.dart';
import 'package:life_style_app/screens/female/female_screen.dart';
import 'package:life_style_app/screens/female/weight_loss/l_w_menu.dart';
import 'package:provider/provider.dart';

import '../drawer_side.dart';
class MainMenu extends StatefulWidget {
  static const String id = 'main-menu-screen';
  const MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
     drawerScrimColor: Colors.transparent,
        endDrawer: DrawerSide(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Color(0xffF29B2C),
              height: 80,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {
                      Navigator.pushReplacementNamed(context, FemaleScreen.id);
                    },
                        icon: Icon(
                          Icons.arrow_back_ios_new, color: Colors.white,)),
                    Builder(
                      builder: (context) {
                        return IconButton(onPressed: () {
                          Scaffold.of(context).openEndDrawer();
                        },
                            icon: Image.asset(
                              'assets/icons/menu.png', fit: BoxFit.cover,
                              color: Colors.white,)
                        );
                      },
                    )
                  ],
                ),
              ),
            ),

            Container(
              height: 270,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/mainmenu.jpg',fit: BoxFit.cover,),

            ),
            SizedBox(height: 55,),
            InkWell(
              onTap: (){
                Navigator.pushReplacementNamed(context, DietPlane.id);
              },
              child: Container(
                  height: 100,
                  width: 350,
                  child: Row(
                    children: [
                      SizedBox(width: 14,),
                      Text('WEIGHT GAIN',
                      style: TextStyle(
                          color: Colors.red.shade800,
                        fontWeight: FontWeight.w500,
                        fontSize: 18
                      ),
                      ),
                      SizedBox(width: 5,),
                      Image.asset('assets/weightgain.jpg'),
                    ],
                  )),
            ),
            SizedBox(height: 55,),
            InkWell(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>LossWeightMenu()));
               },
              child: Container(
                  height: 100,
                  width: 350,
                  child: Row(
                    children: [
                      SizedBox(width: 14,),
                      Text('WEIGHT LOSS',
                        style: TextStyle(
                            color: Colors.red.shade800,
                            fontWeight: FontWeight.w500,
                            fontSize: 18
                        ),
                      ),
                      SizedBox(width: 5,),
                      Image.asset('assets/lossweight.jpg'),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
