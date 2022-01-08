import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_style_app/screens/drawer_side.dart';
import 'package:life_style_app/shop/shop_home.dart';

import 'package:provider/provider.dart';

import 'count.dart';

enum SignInCharacter {fill, outline}


class ProductOverview extends StatefulWidget {

  final String? productName;
  final String? productUrl;
  final int? productPrice;
  final String? productId;


  ProductOverview({this.productId,this.productName,this.productUrl,this.productPrice});



  @override
  _ProductOverviewState createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {

  SignInCharacter _character = SignInCharacter.fill;


  Widget bottomNavigationBar(
    Color iconColor,
    Color backgroundColor,
    Color color,
    String title,
    IconData iconData,
    Function() onTap,
  )
  {
    return Expanded(child: Container(
      padding: EdgeInsets.all(20),
      color: backgroundColor,
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData,
            size: 20,
              color: iconColor,
            ),
            SizedBox(width: 10,),
            Text(title,
            style: TextStyle(
              color: color,
            ),
            ),
          ],
        ),
      ),
    ),
    );

  }

  bool wishListBool= false;

  getWishListBoll(){
    FirebaseFirestore.instance
        .collection('WishList')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('YourWishList').doc(widget.productId)
        .get()
         .then((value)=> {
           if(this.mounted){
             if(value.exists){
               setState(() {
                 wishListBool = value.get('wishList');
               })
             }
           }

    });

  }

  @override
  Widget build(BuildContext context) {
    // WishListProvider wishListProvider =Provider.of(context);
    getWishListBoll();
    return Scaffold(
      backgroundColor: Color(0xffFBFAF8),
      // bottomNavigationBar: Row(
      //   children: [
      //     bottomNavigationBar(
      //         Colors.grey,
      //         textColor,
      //         Colors.white70,
      //         'Add to WishList',
      //         wishListBool== false?  Icons.favorite_outline: Icons.favorite,
      //         (){
      //           setState(() {
      //             wishListBool =! wishListBool;
      //           });
      //           if(wishListBool == true){
      //             wishListProvider.addWishListData(
      //               wishListId: widget.productId,
      //               wishListName: widget.productName,
      //               wishListUrl: widget.productUrl,
      //               wishListPrice: widget.productPrice,
      //               wishListQuantity: 2,
      //             );
      //
      //           }else{
      //             wishListProvider.deleteWishList(widget.productId);
      //           }
      //         }
      //     ),
      //     bottomNavigationBar(
      //       Colors.black,
      //       primaryColor,
      //       Colors.black,
      //       'Go to Cart',
      //      Icons.shop_outlined ,
      //         (){
      //         Navigator.push(context, MaterialPageRoute(builder: (_)=>Cart()));
      //
      //         }
      //     ),
      //   ],
      // ),
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
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
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
                      padding:  EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.green[700],
                              ),

                          Radio(
                              value: SignInCharacter.fill,
                              groupValue: _character,
                              activeColor: Colors.green[700],
                              onChanged: (value){
                                setState(() {
                              //    _character = value;
                                });
                              },
                          ),
                            ],
                          ),
                          Text('\$${widget.productPrice}',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),
                          ),
                          Count(
                            productId: widget.productId,
                            productName: widget.productName,
                            productUrl: widget.productUrl,
                            productPrice: widget.productPrice,
                            productUnit: '500 Gram',
                          ),
                          // Container(
                          //   padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(30),
                          //     border: Border.all(
                          //       color: Colors.grey,
                          //     )
                          //   ),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: [
                          //       Icon(Icons.add,size: 19,color: primaryColor),
                          //       SizedBox(width: 5,),
                          //       Text('ADD'),
                          //
                          //
                          //
                          //     ],
                          //   ),
                          // ),

                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20),
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
