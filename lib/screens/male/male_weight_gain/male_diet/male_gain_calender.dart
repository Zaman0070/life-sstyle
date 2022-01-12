import 'package:flutter/material.dart';
import 'package:life_style_app/screens/male/male_weight_gain/male_diet/male_gain_day1/male_gain_food_day1.dart';
import 'package:life_style_app/screens/male/male_weight_gain/male_gain_menu.dart';
import 'package:life_style_app/screens/male/male_weight_gain/male_sport/male_gain_sport_calender.dart';

import '../../../drawer_side.dart';
import 'male_gain_day2/male_gain_food_day2.dart';

class MaleGainCalenderDiet extends StatefulWidget {
  const MaleGainCalenderDiet({Key? key}) : super(key: key);

  @override
  _MaleGainCalenderDietState createState() => _MaleGainCalenderDietState();
}

class _MaleGainCalenderDietState extends State<MaleGainCalenderDiet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: DrawerSide(),
      body: SafeArea(
        child:Column(
          children: [
            Container(
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
                        icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
                    Builder(
                      builder: (context){
                        return IconButton(onPressed: (){
                          Scaffold.of(context).openEndDrawer();
                        },
                            icon: Image.asset('assets/icons/menu.png',fit: BoxFit.cover,color: Colors.black,)
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 130,
              width: 200,
              child: Image.asset('assets/diet_sy.jpg'),
            ),
            SizedBox(height: 8,),
            Container(
              height: 55,
              width: 270,
              color: Color(0xffF7B044),
              child: Center(
                child: Text('نظام غذائي',
                  style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(left: 22.0,right: 40),
                  child: Text('في ما يلي دليلك الكامل لنظام غذائي يحتوي على أطعمة صحية ستساعدك على خسارة الوزن الزائد لمدى 31 يوما . المرجو استشارة أخصائي في التغذية قيل البدء بأي حمية أو نظام غذائي .',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,letterSpacing: -1.5),
                  ),
                )),
            SizedBox(height: 8,),
            Container(
              height: MediaQuery.of(context).size.height/3.12,
              width: MediaQuery.of(context).size.width/1.05,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 7,crossAxisSpacing: 3.0,mainAxisSpacing: 3),
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay1()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay2()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay1()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay2()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('4',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay1()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay2()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('6',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay1()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('7',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay2()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('8',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay1()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('9',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay2()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay1()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('11',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay2()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('12',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay1()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('13',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay2()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('14',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay1()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('15',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay2()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('16',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay1()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('17',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay2()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('18',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:  (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay1()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('19',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:  (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay2()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('20',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:  (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay1()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('21',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:  (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay2()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('22',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:  (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay1()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('23',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:  (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay2()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('24',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:  (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay1()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('25',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:  (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay2()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('26',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:  (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay1()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('27',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:  (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay2()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('28',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:  (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay1()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('29',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:  (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay2()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('30',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:  (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainFoodMenuDay1()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF7B044),
                          )
                      ),
                      child: Center(
                        child: Column(
                          children: const [
                            Text('31',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('يوم',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleGainSportCalender()));
              },
              child: Container(
                height: 55,
                width: 210,
                color: Color(0xffF7B044),
                child: Center(
                  child: Text('تمارين الرياضه >',
                    style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
