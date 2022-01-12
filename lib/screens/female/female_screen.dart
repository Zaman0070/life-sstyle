import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_style_app/screens/bmi_calculator/bmi_home.dart';
import 'package:life_style_app/screens/female/g_main_menu.dart';

class FemaleScreen extends StatelessWidget {
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
              Text('ستساعدنا هاته البيانات على اختيار \nالنظام الغذائي و الرياضي المناسب لك',textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 82,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>MainMenu()));

                },
                child: Container(
                  height: 50,
                  width: 200,
                  color: Color(0xfffbbe28),
                  child: Center(
                    child: Text(' القائمة البئيسية   <',
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
                Navigator.push(context, MaterialPageRoute(builder: (_)=>BmiHome()));

              },
              child: Container(
                height: 50,
                width: 200,
                color: Color(0xfffbbe28),
                child: Center(
                  child: Text('   حاسيبه موشر الكتلة   <',
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
