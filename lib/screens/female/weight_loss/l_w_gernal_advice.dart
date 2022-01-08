import 'package:flutter/material.dart';
import 'package:life_style_app/screens/female/weight_loss/l_w_menu.dart';

import '../../drawer_side.dart';

class LossWeightGeneralAdvice extends StatefulWidget {
  const LossWeightGeneralAdvice({Key? key}) : super(key: key);

  @override
  _LossWeightGeneralAdviceState createState() => _LossWeightGeneralAdviceState();
}

class _LossWeightGeneralAdviceState extends State<LossWeightGeneralAdvice> {
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
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>LossWeightMenu()));
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
                      Text("الفاكهة والخضار منخفضة في السعرات الحرارية والدهون ، وتحتوي على نسبة عالية من الألياف - 3 مكونات أساسية لإنقاص الوزن بنجاح. أن تكون نشيطًا هو مفتاح خسارة الوزن والحفاظ عليه. بالإضافة إلى توفير الكثير من الفوائد الصحية ، يمكن أن تساعد التمارين في حرق السعرات الحرارية الزائدة التي لا يمكنك أن تفقدها من خلال النظام الغذائي وحده. يخلط الناس أحيانًا بين العطش والجوع. يمكن أن ينتهي بك الأمر إلى استهلاك سعرات حرارية إضافية عندما يكون كوب الماء هو ما تحتاجه حقًا. يستغرق الأمر حوالي 20 دقيقة حتى تخبر المعدة الدماغ بأنها ممتلئة ، لذا تناول الطعام ببطء وتوقف عن الأكل قبل أن تشعر بالشبع. لتجنب الإغراء ، لا تقم بتخزين الأطعمة السريعة - مثل الشوكولاتة والبسكويت ورقائق البطاطس والمشروبات الغازية الحلوة - في المنزل . حاول التخطيط لوجبات الإفطار والغداء والعشاء والوجبات الخفيفة طوال الأسبوع ، وتأكد من الالتزام بالسعرات الحرارية المسموح بها. قد تجد أنه من المفيد إنشاء قائمة تسوق أسبوعية.",
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
