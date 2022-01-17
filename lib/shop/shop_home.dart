<<<<<<< HEAD
import 'dart:convert';
=======
>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_style_app/screens/cat_screen/cary_screen.dart';
import 'package:life_style_app/screens/drawers/m_g_drawer_side.dart';
<<<<<<< HEAD
import 'package:life_style_app/shop/cart_view.dart';
import 'package:life_style_app/shop/product_over_view.dart';
import 'package:life_style_app/shop/review_star.dart';
import 'package:life_style_app/wp_api.dart';
import 'package:uuid/uuid.dart';
import 'package:woocommerce_api/woocommerce_api.dart';
import 'package:woosignal/helpers/shared_pref.dart';
=======
import 'package:life_style_app/shop/product_over_view.dart';
import 'package:life_style_app/shop/review_star.dart';
import 'package:woocommerce_api/woocommerce_api.dart';
>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc
import 'package:woosignal/models/payload/order_wc.dart';
import 'package:woosignal/models/response/products.dart';
import 'package:woosignal/woosignal.dart';
import 'package:http/http.dart' as http;

<<<<<<< HEAD
class ShopHome extends StatefulWidget {
=======

class ShopHome extends StatefulWidget {

>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc
  @override
  _ShopHomeState createState() => _ShopHomeState();
}

class _ShopHomeState extends State<ShopHome> {
  int count = 0;
<<<<<<< HEAD
  var cartKey = Uuid().v4().toString().substring(0, 7);
=======

  getProducts() async {


    await WooSignal.instance.init(appKey: "ck_73b8b2030da9878cdc1b9cdab513fce415418696");

    OrderWC orderWC = OrderWC();
    orderWC.setPaid = true;
    orderWC.lineItems = [];

    // Step 2 - Call an API
    WooSignal.instance.createOrder(orderWC);// prints a product name

  }





>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc

  Future _getProducts() async {
    // Initialize the API
    WooCommerceAPI wooCommerceAPI = WooCommerceAPI(
        url: "https://nutriana.surnaturel.ma/",
        consumerKey: "ck_73b8b2030da9878cdc1b9cdab513fce415418696",
        consumerSecret: "cs_974a8179e3d0009937fc59c3793ae9a85be50a0c");

    // Get data using the "products" endpoint
    var products = await wooCommerceAPI.getAsync("products");
    return products;
  }

<<<<<<< HEAD
  addToCart(int id) async {
    var basrUrl = "https://nutriana.surnaturel.ma/";
    var client = http.Client();
    Map<String, String> header = {'content-type': 'application/json'};
    var response = await client.post(Uri.parse(basrUrl + "wp-json/cocart/v2/cart/add-item?id=$id&cart_key=$cartKey"), headers: header);
    if (response.statusCode == 200) {
      print('added to cart');
      var decoded = json.decode(response.body);
      print(decoded);
    } else {
      print('cart not order');
      print(cartKey);
    }
  }

=======
  addToCart(int id)async{
    var basrUrl = "https://nutriana.surnaturel.ma/";
    var client =http.Client();
    Map<String,String> header ={'content-type' : 'application/json'};
    var response = await client.post(Uri.parse(basrUrl + "?add-to-cart=$id"),headers: header
    );
    if(response.statusCode == 200){
      print('cart added');
    }else{
      print('cart not order');
    }
  }




>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFAF8),
      bottomNavigationBar: Container(
        height: 85,
        color: Color(0xffFDB640),
        child: Padding(
<<<<<<< HEAD
          padding: const EdgeInsets.only(left: 15.0, right: 24),
=======
          padding: const EdgeInsets.only(left: 15.0,right: 24),
>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: InkWell(
<<<<<<< HEAD
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => ShopHome()));
                    },
                    child: Image.asset(
                      'assets/icons/shop.jpg',
                    )),
              ),
              Image.asset(
                'assets/icons/gift.jpg',
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => ReviewStar()));
                  },
                  child: Image.asset(
                    'assets/icons/star.jpg',
                  )),
=======
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>ShopHome()));
                    },
                    child: Image.asset('assets/icons/shop.jpg',)),
              ),
              Image.asset('assets/icons/gift.jpg',),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>ReviewStar()));
                  },
                  child: Image.asset('assets/icons/star.jpg',)),
>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc
            ],
          ),
        ),
      ),
      endDrawer: DrawerSide(),
      appBar: AppBar(
        centerTitle: false,
<<<<<<< HEAD
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CartView(cartKey: cartKey)));
              },
              child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xffFDB640),
                  child: Image.asset(
                    'assets/icons/shopping-cart.png',
                    height: 20,
                  )),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '$count+',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
            ),
=======
        title:Row(
          children: [
             CircleAvatar(
               radius: 20,
                  backgroundColor:  Color(0xffFDB640),
                  child: Image.asset('assets/icons/shopping-cart.png',height: 20,)),
            SizedBox(width: 5,),
            Text('$count+',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16),),

>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc
          ],
        ),
        elevation: 0,
        toolbarHeight: 70,
        iconTheme: IconThemeData(
          color: Colors.black,
          // size: 33
        ),
<<<<<<< HEAD
        backgroundColor: Color(0xffFBFAF8),
        leading: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_new)),
=======
        backgroundColor:Color(0xffFBFAF8),
        leading: Row(
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios_new)),
>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc
            // CircleAvatar(
            //     child: Image.asset('assets/icons/shopping-cart.png',height: 20,)),
          ],
        ),
      ),
<<<<<<< HEAD
      body: ListView(
=======
      body:ListView(
>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc
        children: [
          Container(
            height: 170,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
<<<<<<< HEAD
                    height: 55,
                    width: 280,
                    color: Color(0xffFDB640),
                    child: Center(
                        child: Text(
                      'المتجر',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 34, letterSpacing: 3),
                    ))),
                SizedBox(
                  height: 8,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30),
                    child: Text(
                      'مرحبا بكم على متجر نوتريانا الذي نقترح فيه عليكم مكملات غذائية طبيعية تساعد في زيادة قوة الجسم ، زيادة الكتلة العضلية و محاربة أعراض القولون العصبي',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
=======
                  height:55,
                    width: 280,
                    color:Color(0xffFDB640),
                    child: Center(child: Text('المتجر',
                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 34,letterSpacing: 3),
                    ))),
                SizedBox(height: 8,),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0,right: 30),
                    child: Text('مرحبا بكم على متجر نوتريانا الذي نقترح فيه عليكم مكملات غذائية طبيعية تساعد في زيادة قوة الجسم ، زيادة الكتلة العضلية و محاربة أعراض القولون العصبي',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc
                    ),
                  ),
                ),
              ],
            ),
<<<<<<< HEAD
          ),
          SizedBox(
            height: 30,
          ),
=======

          ),
          SizedBox(height: 30,),
>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: 435,
<<<<<<< HEAD
              child: FutureBuilder(
=======
              child:   FutureBuilder(
>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc
                future: _getProducts(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    // Create a list of products
                    return ListView.builder(
<<<<<<< HEAD
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ProductOverview(
                                          productUrl: snapshot.data[index]["images"][0]["src"].toString(),
                                          productName: snapshot.data[index]["name"].toString(),
                                          productPrice: snapshot.data[index]["price"].toString(),
                                          discrition: snapshot.data[index]["description"].toString(),
                                          count: count,
                                        )));
=======

                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {

                        return GestureDetector(
                          onTap: ()


                          {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>ProductOverview(
                              productUrl: snapshot.data[index]["images"][0]["src"].toString(),
                              productName:snapshot.data[index]["name"].toString(),
                              productPrice: snapshot.data[index]["price"].toString(),
                              discrition:  snapshot.data[index]["description"].toString(),
                              count: count,
                            )));
>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc
                          },
                          child: Column(
                            children: [
                              ListTile(
<<<<<<< HEAD
                                leading: Image.network(
                                  snapshot.data[index]["images"][0]["src"].toString(),
                                  height: 50,
                                ),
                                title: Flexible(
                                  child: Text(
                                    snapshot.data[index]["name"].toString(),
                                    style: TextStyle(fontSize: 16, color: Color(0xffFDB640), fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
                                  ),
                                ),
                                subtitle: Text("Buy now for \AED " + snapshot.data[index]["price"].toString()),
                                trailing: InkWell(
                                  onTap: () {
                                    // getProducts();
                                    setState(() {
                                      var id = snapshot.data[index]['id'];
                                      addToCart(id);
                                      count++;
                                    });
                                  },
                                  child: CircleAvatar(
                                      backgroundColor: Color(0xffFDB640),
                                      child: Image.asset(
                                        'assets/icons/shopping-cart.png',
                                        height: 20,
                                      )),
                                ),
                              ),
=======
                                leading: Image.network(snapshot.data[index]["images"][0]["src"].toString(),height: 50,),
                                title: Flexible(
                                  child: Text(snapshot.data[index]["name"].toString(),style: TextStyle(
                                    fontSize: 16,
                                      color:Color(0xffFDB640),
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.ellipsis
                                  ),),
                                ),
                                subtitle:
                                Text("Buy now for \AED " + snapshot.data[index]["price"].toString()),
                                trailing: InkWell(

                                  onTap: (){
                                   getProducts();
                                    setState(() {
                                      var id= snapshot.data[index]['id'];
                                      count ++;
                                      addToCart(id);
                                    });
                                  },
                                  child: CircleAvatar(
                                      backgroundColor:  Color(0xffFDB640),
                                      child: Image.asset('assets/icons/shopping-cart.png',height: 20,)),
                                ) ,
                              ),

>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc
                            ],
                          ),
                        );
                      },
                    );
                  }
                  // Show a circular progress indicator while loading products
                  return const Center(
<<<<<<< HEAD
                    child: CircularProgressIndicator(
                      color: Color(0xffFDB640),
                    ),
=======
                    child: CircularProgressIndicator(color:  Color(0xffFDB640),),
>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc
                  );
                },
              ),
            ),
          ),
        ],
<<<<<<< HEAD
      ),
=======
      ) ,
>>>>>>> 8ccb3b365e9d7cab59afe912df64d75231ab0ddc
    );
  }
}
