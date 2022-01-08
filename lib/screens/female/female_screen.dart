import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_style_app/screens/bmi_calculator/bmi_home.dart';
import 'package:life_style_app/screens/female/g_main_menu.dart';

class FemaleScreen extends StatelessWidget {
  static const String id = 'female-screen';
  const FemaleScreen({Key? key}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              Text('WELCOME TO OUR APP',
                style: TextStyle(color: Colors.red.shade800,fontSize: 20,fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8,),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width/1.4,
                color: Color(0xfffbbe28),
                child: Center(child: Text('مرحبا بكم في تطبيقنا',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                )),

              ),
              SizedBox(height: 25,),
              Text('ستساعدنا البيانات التالية في اختيار أفضل\n نظام غذائي وممارسة الرياضة بالنسبة لك',
                style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text('THE FOLLOWING DATA WILL HELP US CHOOSE THE BEST DIET AND EXERCISE FOR YOU ',
                    textAlign: TextAlign.center,

                    style: TextStyle(color: Colors.red.shade800,fontSize: 15,fontWeight: FontWeight.w500,letterSpacing: 0.8),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('MAIN MENU',
                style: TextStyle(color: Colors.red.shade800,fontSize: 22,fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 12,),
              InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(context, MainMenu.id);
                },
                child: Container(
                  height: 50,
                  width: 200,
                  color: Color(0xfffbbe28),
                  child: Center(
                    child: Text('القائمة الرئيسية <',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),

                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('BMI Calculator',
                style: TextStyle(color: Colors.red.shade800,fontSize: 22,fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 12,),
            InkWell(
              onTap: (){
                Navigator.pushReplacementNamed(context, BmiHome.id);
              },
              child: Container(
                height: 50,
                width: 200,
                color: Color(0xfffbbe28),
                child: Center(
                  child: Text('حاسبة مؤشر كتلة الجسم <',
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
