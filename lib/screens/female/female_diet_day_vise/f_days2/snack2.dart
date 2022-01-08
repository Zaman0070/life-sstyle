import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_style_app/screens/female/female_diet_day_vise/f_days2/f_food_main2.dart';
import 'package:life_style_app/shop/review_star.dart';
import 'package:life_style_app/shop/shop_home.dart';

import '../../../drawer_side.dart';

class SnackDay2 extends StatefulWidget {
  const SnackDay2({Key? key}) : super(key: key);

  @override
  _SnackDay2State createState() => _SnackDay2State();
}

class _SnackDay2State extends State<SnackDay2> {
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
        child: Column(
          children: [
            Container(
              color:  Color(0xffF39B2D),
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pushReplacementNamed(context,FemaleFoodMain2.id);
                    },
                        icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),

                    // Center(child: Text('اليوم ثاني',
                    //   style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    // )),
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
            Container(
              height: 210,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/snake2.jpg',fit: BoxFit.cover,),
            ),
            Container(
              height: 100,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 110,
                      color:  Color(0xffF39B2D),
                      child: Column(
                        children: const [
                          SizedBox(height: 20,),
                          Text('700',
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28),
                          ),
                          Text('كالوري',
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15,),
                        Text('خبز التوست و البيض',
                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 26,letterSpacing: 1.5),
                        ),
                        Row(
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.favorite_outline,size: 20,),
                                Text('الإعجابات'),
                                SizedBox(width: 12,),
                                Icon(Icons.share,size: 20,),
                                Text('مشاركة'),
                                SizedBox(width: 12,),
                                Icon(CupertinoIcons.chat_bubble,size: 20,),
                                Text('تعليق'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text('وعاء مليء بالسلطة التي تحتوي على خيار ، جملون ، بصل ، وفجل.',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                ),
              ),
            )

          ],

        ),
      ),
    );
  }
}
