import 'package:flutter/material.dart';
import 'package:life_style_app/screens/female/female_screen.dart';
import 'package:life_style_app/screens/male/male_home.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Center(
          child: Column(
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
              SizedBox(height: 20,),
              Text('ستساعدنا البيانات التالية في اختيار أفضل\n نظام غذائي وممارسة الرياضة بالنسبة لك',
                style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text('THE FOLLOWING DATA WILL HELP US CHOOSE THE BEST DIET AND EXERCISE FOR YOU ',
                    textAlign: TextAlign.center,

                    style: TextStyle(color: Colors.red.shade800,fontSize: 15,fontWeight: FontWeight.w500,letterSpacing: 0.8),
                  ),
                ),
              ),
              Center(
                child: Text('ARE YOU ',
                  textAlign: TextAlign.center,

                  style: TextStyle(color: Colors.red.shade800,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 0.8),
                ),
              ),
              Text('هل أنت',
                textAlign: TextAlign.center,

                style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500,letterSpacing: 0.8),
              ),
              SizedBox(height: 10,),
              Container(
                height: 300,
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('MALE',
                          textAlign: TextAlign.center,

                          style: TextStyle(color: Colors.red.shade800,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 0.8),
                        ),
                        SizedBox(height: 8,),
                        Text('الذكر',
                          textAlign: TextAlign.center,

                          style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500,letterSpacing: 0.8),
                        ),
                        SizedBox(height: 8,),

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>MaleHomeScreen()));
                          },
                          child: Container(
                            height: 150,
                            width: 130,
                            decoration: BoxDecoration(
                              color:Color(0xfffbbe28),
                              boxShadow:[
                                BoxShadow(
                                  offset: Offset(0,6),
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 7,

                                ),
                              ]
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset('assets/icons/man.png',),
                            ),

                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('FEMALE',
                          textAlign: TextAlign.center,

                          style: TextStyle(color: Colors.red.shade800,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 0.8),
                        ),
                        SizedBox(height: 8,),
                        Text('أنثى',
                          textAlign: TextAlign.center,

                          style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500,letterSpacing: 0.8),
                        ),
                        SizedBox(height: 8,),

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>FemaleScreen()));
                          },
                          child: Container(
                            height: 150,
                            width: 130,
                            decoration: BoxDecoration(
                                color:Color(0xfffbbe28),
                                boxShadow:[
                                  BoxShadow(
                                    offset: Offset(0,6),
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius: 5,
                                    blurRadius: 7,

                                  ),
                                ]
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset('assets/icons/girl.png',),
                            ),

                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
