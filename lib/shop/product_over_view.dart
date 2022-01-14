import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_style_app/screens/drawers/m_g_drawer_side.dart';
import 'package:life_style_app/shop/shop_home.dart';
enum SignInCharacter {fill, outline}


class ProductOverview extends StatefulWidget {

  final String? productName;
  final String? productUrl;
  final String? productPrice;
  final int? count;


  ProductOverview({this.productName,this.productUrl,this.productPrice,this.count});



  @override
  _ProductOverviewState createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  SignInCharacter _character = SignInCharacter.fill;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFAF8),
      endDrawer: DrawerSide(),
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
              Image.asset('assets/icons/star.jpg',),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: false,
        title:Row(
          children: [
            CircleAvatar(
                backgroundColor:  Color(0xffFDB640),
                child: Image.asset('assets/icons/shopping-cart.png',height: 20,)),
            SizedBox(width: 5,),
            Text('${widget.count}+',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16),),



          ],
        ),
        elevation: 0,
        toolbarHeight: 70,
        iconTheme: IconThemeData(
          color: Colors.black,
          // size: 33
        ),
        backgroundColor:Color(0xffFBFAF8),
        leading: Row(
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios_new)),
            // CircleAvatar(
            //     child: Image.asset('assets/icons/shopping-cart.png',height: 20,)),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
              height:50,
              width: 280,
              color:Color(0xffFDB640),
              child: Center(child: Text('المتجر',
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 34,letterSpacing: 3),
              ))),

          Expanded(
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                   // ListTile(
                   //   title:  Text(widget.productName!,
                   //   style: TextStyle(
                   //     fontWeight: FontWeight.w600,
                   //     fontSize: 20,
                   //   ),
                   //   ),
                   //   subtitle:  Text('\$50',
                   //     style: TextStyle(
                   //       fontWeight: FontWeight.w300,
                   //       fontSize: 16,
                   //     ),
                   //   ),
                   // ),
                    SizedBox(height: 5,),
                    Container(
                      //padding: EdgeInsets.all(30),
                      height: 210,
                      child: Image(
                        image: NetworkImage(widget.productUrl!,
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1.5,
                    ),
      Text(widget.productName!,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
            color: Color(0xffFDB640),
          ),
          ),
                    Text('مكمل غذائي بعسـل الليمون',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Colors.grey
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '250 DHS',
                          style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xffFDB640),fontSize: 22),

                        children: const <TextSpan>[
                          TextSpan(text: ' .', style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey,)),
                          TextSpan(text: ' 1 KG',style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xffFDB640),fontSize: 22),),
                        ],
                      ),
                    ),


                    SizedBox(height: 10,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: SignInCharacter.fill,
                                groupValue: _character,
                                activeColor: Colors.green[700],
                                onChanged: (value){
                                  setState(() {
                                   // _character = value;
                                  });
                                },
                              ),
                            ],
                          ),
                          Text('\AED ${widget.productPrice}',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0,right: 30),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text('مرحبا بكم على متجر نوتريانا الذي نقترح فيه عليكم مكملات غذائية طبيعية تساعد في زيادة قوة الجسم ، زيادة الكتلة العضلية و محاربة أعراض القولون العصبي'
                          ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                        height:50,
                        width: 170,
                        color:Color(0xffFDB640),
                        child: Center(child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Text('> أريد واحد',
                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 34,letterSpacing: 3),
                          ),
                        ))),
                  ],
                ),
              ),

          ),
        ],
      ),
    );
  }
}
