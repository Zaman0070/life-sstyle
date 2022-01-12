import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_style_app/screens/female/female_diet_day_vise/f_days2/f_food_main2.dart';
import 'package:life_style_app/shop/review_star.dart';
import 'package:life_style_app/shop/shop_home.dart';
import 'package:share/share.dart';

import '../../../drawer_side.dart';

class BreakFastday2 extends StatefulWidget {
  const BreakFastday2({Key? key}) : super(key: key);

  @override
  _BreakFastday2State createState() => _BreakFastday2State();
}

class _BreakFastday2State extends State<BreakFastday2> {
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
                      Navigator.pop(context);
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
              child: Image.asset('assets/bf2.jpg',fit: BoxFit.cover,),
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
                          Text('1000',
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
                              children:  [
                                Container(
                                  height:25,
                                  width: 25,
                                  child: FavoriteButton(
                                    iconSize: 33,
                                    isFavorite: true,
                                    // iconDisabledColor: Colors.white,
                                    valueChanged: (_isFavorite) {
                                      print('Is Favorite : $_isFavorite');
                                    },
                                  ),
                                ),
                                Text('الإعجابات'),
                                SizedBox(width: 12,),
                                InkWell(
                                    onTap: (){
                                      Share.share('https://github.com/Zaman0070/life-sstyle');
                                    },
                                    child: Icon(Icons.share,size: 20,)),
                                Text('مشاركة'),
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
                child: Text('قطعتان من خبز التوست المحمصة بيضتان مسلوقتان أو مقليتان على الماء نصف حبة افوكادو طماطم صغيرة او بعض قطع من الفطر',
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
