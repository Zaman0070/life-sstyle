import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:life_style_app/auth/email_screen.dart';
import 'package:life_style_app/auth/google_screen.dart';
import 'package:life_style_app/screens/home_screen.dart';
import 'package:life_style_app/service/phone_service.dart';
import 'dart:convert';


String prettyPrint(Map json) {
  JsonEncoder encoder =  JsonEncoder.withIndent('  ');
  String pretty = encoder.convert(json);
  return pretty;
}
class LoginScreen extends StatefulWidget {
  static const String id = 'login-screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  // Map<String, dynamic>? _userData;
  // AccessToken? _accessToken;
  // bool _checking = true;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _checkIfIsLogged();
  // }
  //
  // Future<void> _checkIfIsLogged() async {
  //   final accessToken = await FacebookAuth.instance.accessToken;
  //   setState(() {
  //     _checking = false;
  //   });
  //   if (accessToken != null) {
  //     print("is Logged:::: ${prettyPrint(accessToken.toJson())}");
  //     // now you can call to  FacebookAuth.instance.getUserData();
  //     final userData = await FacebookAuth.instance.getUserData();
  //     // final userData = await FacebookAuth.instance.getUserData(fields: "email,birthday,friends,gender,link");
  //     _accessToken = accessToken;
  //     setState(() {
  //       _userData = userData;
  //     });
  //   }
  // }
  //
  // void _printCredentials() {
  //   print(
  //     prettyPrint(_accessToken!.toJson()),
  //   );
  // }
  //
  // Future<void> _login() async {
  //   final LoginResult result = await FacebookAuth.instance.login(); // by default we request the email and the public profile
  //
  //   // loginBehavior is only supported for Android devices, for ios it will be ignored
  //   // final result = await FacebookAuth.instance.login(
  //   //   permissions: ['email', 'public_profile', 'user_birthday', 'user_friends', 'user_gender', 'user_link'],
  //   //   loginBehavior: LoginBehavior
  //   //       .DIALOG_ONLY, // (only android) show an authentication dialog instead of redirecting to facebook app
  //   // );
  //
  //   if (result.status == LoginStatus.success) {
  //     _accessToken = result.accessToken;
  //     _printCredentials();
  //     // get the user data
  //     // by default we get the userId, email,name and picture
  //     final userData = await FacebookAuth.instance.getUserData();
  //     // final userData = await FacebookAuth.instance.getUserData(fields: "email,birthday,friends,gender,link");
  //     _userData = userData;
  //   } else {
  //     print(result.status);
  //     print(result.message);
  //   }
  //
  //   setState(() {
  //     _checking = false;
  //   });
  // }
  //
  //
  // Future<void> _logOut() async {
  //   await FacebookAuth.instance.logOut();
  //   _accessToken = null;
  //   _userData = null;
  //   setState(() {});
  // }
  //
  //
  //
  // facebookLogin() async {
  //   print("FaceBook");
  //   try {
  //     final result =
  //     await FacebookAuth.i.login(permissions: ['public_profile', 'email']);
  //     if (result.status == LoginStatus.success) {
  //       final userData = await FacebookAuth.i.getUserData();
  //       print(userData);
  //     }
  //   } catch (error) {
  //     print(error);
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/background.png'),
            )
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 455,),
            Container(
              height: 345,
              width: double.infinity,
              //color: Colors.grey,
              child: Column(
                children: [
                  Text('LOGIN USING FACEBOOK',
                  style: TextStyle(
                    color: Colors.red.shade800,
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                  ),
                  ),
                  SizedBox(height: 8,),



              // _checking
              //     ? Center(
              //   child: CircularProgressIndicator(),
              // )
              //     : SingleChildScrollView(
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: <Widget>[
              //         Text(
              //           _userData != null ? prettyPrint(_userData!) : "NO LOGGED",
              //         ),
              //         SizedBox(height: 20),
              //         _accessToken != null
              //             ? Text(
              //           prettyPrint(_accessToken!.toJson()),
              //         )
              //             : Container(),
              //         SizedBox(height: 20),
              //         CupertinoButton(
              //           color: Colors.blue,
              //           child: Text(
              //             _userData != null ? "LOGOUT" : "LOGIN",
              //             style: TextStyle(color: Colors.white),
              //           ),
              //           onPressed: _userData != null ? _logOut : _login,
              //         ),
              //         SizedBox(height: 50),
              //       ],
              //     ),
              //   ),
              // ),




                  InkWell(
                    onTap: (){
                      PhoneService().signInWithFacebook(context);

                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.1,
                      color: Color(0xff3b5998),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                         Container(
                           height: 50,
                           width: 50,
                           color: Colors.white10,
                           child: Image.asset('assets/icons/facebook.png',color: Colors.grey.shade300,),
                         ),
                          SizedBox(width: 10,),
                          Center(child: Text('تسجيل الدخول باستخدام الفيسبوك',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18
                          ),
                          )),
                        ],
                      ),
                    ),
                  ),




                  SizedBox(height: 6,),
                  Text('LOGIN USING GOOGLE',
                    style: TextStyle(
                        color: Colors.red.shade800,
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(height: 8,),
                  InkWell(
                    onTap: ()async {
                      User? user =await GoogleAuth.signInWithGoogle(context: context);
                      if(user!=null){
                        PhoneService _auth = PhoneService();
                        _auth.addUser(context, user.uid);
                      }
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.1,
                      color: Colors.red.shade700,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.white10,
                            child: Image.asset('assets/icons/email.png',color: Colors.grey.shade300,),
                          ),
                          SizedBox(width: 6,),
                          Center(child: Text('سجيل الدخول باستخدام البريد الإلكتروني',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, EmailScreen.id);
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Text("I DON'T HAVE AN ACCOUNT",
                            style: TextStyle(
                                color: Colors.red.shade800,
                                fontSize: 20,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          Text('لا املك حساب',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: Column(
                      children: [
                        Text("FORGET PASSWORD",
                          style: TextStyle(
                              color: Colors.red.shade800,
                              fontSize: 20,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        Text('هل نسيت كلمة المرور ؟',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400
                          ),
                        ),

                      ],
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
