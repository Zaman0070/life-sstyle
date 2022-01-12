import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:life_style_app/screens/drawer_side.dart';
import 'package:life_style_app/screens/female/f_diet.dart';
import 'package:life_style_app/screens/female/f_general_advices.dart';
import 'package:life_style_app/screens/female/f_sport.dart';
import 'package:life_style_app/screens/female/female_screen.dart';
import 'package:life_style_app/screens/female/g_main_menu.dart';
import 'package:life_style_app/shop/review_star.dart';
import 'package:life_style_app/shop/shop_home.dart';
class DietPlane extends StatefulWidget {
  const DietPlane({Key? key}) : super(key: key);

  @override
  _DietPlaneState createState() => _DietPlaneState();
}

class _DietPlaneState extends State<DietPlane> {



  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 85,
        color: Color(0xffFDB640),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0,right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>ShopHome()));
                    },
                    child: Image.asset('assets/icons/shop.jpg',)),
              ),
              Image.asset('assets/icons/gift.jpg',),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>ReviewStar()));
                  },
                  child: Image.asset('assets/icons/star.jpg',)),
            ],
          ),
        ),
      ),
      endDrawer: DrawerSide(),
      body: SafeArea(
        child: Stack(
          children: [
            ClipPath(
              clipper: MyCliper(),
              child: Container(
                height: 530,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffF7B044),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
                      Builder(
                        builder: (context){
                          return IconButton(onPressed: (){
                            Scaffold.of(context).openEndDrawer();
                          },
                              icon: Image.asset('assets/icons/menu.png',fit: BoxFit.cover,color: Colors.white,)
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 150,),
                  InkWell(
                  onTap: (){
                    //Navigator.pushReplacementNamed(context, FemaleDietSystem.id);
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>FemaleDietSystem()));
                  },
                    child: Container(
                      height: 120,
                      width: 270,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(65),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0,6),
                                blurRadius: 2,
                                color: Colors.black26
                            ),
                          ]
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 22,),
                          Container(
                            height: 120,
                            width: 110,
                            child: Image.asset('assets/diet_sy.jpg'),

                          ),
                          SizedBox(width: 12,),
                          Text('نظام غذائي',
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 35,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>FemaleSport()));

                      //Navigator.pushReplacementNamed(context, FemaleSport.id);
                    },
                    child: Container(
                      height: 120,
                      width: 270,

                      decoration: BoxDecoration(

                          color: Colors.white,
                          borderRadius: BorderRadius.circular(65),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0,6),
                                blurRadius: 2,
                                color: Colors.black26
                            ),
                          ]
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 15,),
                          Container(
                            height: 95,
                            width: 110,
                            child: Image.asset('assets/sp_ex.jpg'),

                          ),
                          SizedBox(width: 12,),
                          Text('تمارين رياضية',
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 35,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>FemaleGeneralAdvice()));

                      //Navigator.pushReplacementNamed(context, FemaleGeneralAdvice.id);
                    },
                    child: Container(
                      height: 120,
                      width: 270,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(65),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0,6),
                                blurRadius: 2,
                                color: Colors.black26
                            ),
                          ]
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 22,),
                          Container(
                            height: 105,
                            width: 110,
                            child: Image.asset('assets/advise.jpg'),

                          ),
                          SizedBox(width: 12,),
                          Text('نصائح عامة',
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCliper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.cubicTo(size.width, size.height * 0.7, 0, size.height * 0.8, 0,
        size.height * 0.55);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }


  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}
