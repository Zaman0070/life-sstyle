import 'package:flutter/material.dart';

import '../drawer_side.dart';
import 'diet_plane.dart';

class FemaleGeneralAdvice extends StatefulWidget {


  @override
  _FemaleGeneralAdviceState createState() => _FemaleGeneralAdviceState();
}

class _FemaleGeneralAdviceState extends State<FemaleGeneralAdvice> {
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
              child: Image.asset('assets/advise.jpg'),
            ),
            SizedBox(height: 8,),
            Container(
              height: 55,
              width: 270,
              color: Color(0xffF7B044),
              child: Center(
                child: Text('نصائح عامة',
                  style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(left: 22.0,right: 40),
                  child: Column(
                    children: const [
                      Text('ملاحظة :',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                      ),
                      Text('إن تناول ثلاث وجبات على الأقل في اليوم يمكن أن يجعل من السهل زيادة تناول السعرات الحرارية. يمكن أن يساعد تناول الوجبات الخفيفة بين الوجبات أيضًا على زيادة عدد السعرات الحرارية في النظام الغذائي. بالاقتران مع تدريبات الوزن المنتظمة ، فإن استهلاك 0.8-2.0 جرام من البروتين لكل كيلوغرام من وزن الجسم سيزيد من كتلة عضلات الشخص. هذا ضروري لزيادة الوزن بشكل صحي. قد يجد الأشخاص الذين يعانون من قلة الشهية أن المخفوق أو العصير عالي السعرات الحرارية أكثر جاذبية من وجبة كبيرة. زيادة الوزن بشكل آمن يمكن أن تتطلب الصبر والتصميم. ليس من الممكن دائمًا رؤية النتائج على الفور. كل شخص مختلف ، وقد يستغرق الأمر وقتًا أطول بالنسبة لبعض الأشخاص مقارنة بالآخرين.',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,letterSpacing: -1.5),
                      ),
                      Text('يتوقف بعض الأشخاص عن ممارسة تمارين القلب والأوعية الدموية عندما يحاولون زيادة الوزن ، ولكنها ضرورية للحفاظ على صحة القلب والرئتين والدماغ. الجري والسباحة وركوب الدراجات كلها طرق جيدة لممارسة تمارين القلب والأوعية الدموية.',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,letterSpacing: -1.5),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
