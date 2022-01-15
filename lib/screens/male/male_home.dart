import 'package:flutter/material.dart';
import 'package:life_style_app/screens/bmi_calculator/bmi_home.dart';
import 'package:life_style_app/screens/male/male_bmi/m_bmi_home.dart';
import 'package:life_style_app/screens/male/male_main_menu.dart';

class MaleHomeScreen extends StatefulWidget {
  const MaleHomeScreen({Key? key}) : super(key: key);

  @override
  _MaleHomeScreenState createState() => _MaleHomeScreenState();
}

class _MaleHomeScreenState extends State<MaleHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              SizedBox(height: 8,),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width/1.4,
                color: Color(0xfffbbe28),
                child: Center(child: Text('مرحبا بك على تطبيقنا',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                )),

              ),
              SizedBox(height: 25,),
              Text('ستساعدنا هاته البيانات على اختيار \nالنظام الغذائي و الرياضي المناسب لك',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 25,),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(

                  height: MediaQuery.of(context).size.height/13,
                  width: MediaQuery.of(context).size.width/1.2,
                  margin: const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffF6A419),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.watch_later_outlined,                    color: Colors.black,
                        size: 45,
                      ),

                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        'العمر',
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),

              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  height: MediaQuery.of(context).size.height/13,
                  width: MediaQuery.of(context).size.width/1.2,
                  margin: const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffF6A419),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.thermostat,                 color: Colors.black,
                        size: 45,
                      ),

                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        'الطول بالسنتمتر ',
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  height: MediaQuery.of(context).size.height/13,
                  width: MediaQuery.of(context).size.width/1.2,
                  margin: const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffF6A419),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.monitor_weight_outlined,                  color: Colors.black,
                        size: 45,
                      ),

                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        ' الوزن بالكيلوغرام ',
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              InkWell(
                onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleMainMenu()));
                },
                child: Container(
                  height: 50,
                  width: 200,
                  color: Color(0xfffbbe28),
                  child: Center(
                    child: Text(' القائمة الرئيسية   <',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),

                    ),
                  ),
                ),
              ),
              SizedBox(height: 32,),
              InkWell(
                onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleBmiHome()));
                },
                child: Container(
                  height: 55,
                  width: 200,
                  color: Color(0xfffbbe28),
                  child: Center(
                    child: Text('  حاسبة مؤشر كتلة   <',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),

                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
