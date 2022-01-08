import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_style_app/provider/cart_provider.dart';
import 'package:life_style_app/provider/product_provider.dart';
import 'package:life_style_app/screens/drawer_side.dart';
import 'package:life_style_app/shop/count.dart';
import 'package:life_style_app/shop/product_over_view.dart';
import 'package:life_style_app/shop/review_star.dart';
import 'package:life_style_app/shop/single_product.dart';
import 'package:provider/provider.dart';


class ShopHome extends StatefulWidget {

  @override
  _ShopHomeState createState() => _ShopHomeState();
}

class _ShopHomeState extends State<ShopHome> {


  Widget _buildHerbsProduct(context) {
    ProductProvider productProvider = Provider.of<ProductProvider>(context);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: productProvider.getHerbsProductDataList.map((herbsProductData) {
          return  SingleProduct(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>ProductOverview(
                productPrice: herbsProductData.productPrice,
                productName:herbsProductData.productName,
                productUrl: herbsProductData.productUrl,
                productId: herbsProductData.productId,
              )));
            },
            productUrl:herbsProductData.productUrl,
            productName:herbsProductData.productName,
            productPrice: herbsProductData.productPrice,
            productId: herbsProductData.productId,
            productUnit: herbsProductData,
          );
        }).toList(),
      ),
    );
  }

       @override
       void initState() {
         ProductProvider productProvider =  Provider.of(context,listen: false );
         CartProvider cartProvider = Provider.of(context,listen: false);
         productProvider.fetchHerbsProductData();
         // TODO: implement initState
         super.initState();
       }

       ProductProvider? product ;
  CartProvider cart=CartProvider();

  @override
  Widget build(BuildContext context) {

    
    product =Provider.of(context);
    return Scaffold(
      backgroundColor: Color(0xffFBFAF8),
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
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>ReviewStar()));
                  },
                  child: Image.asset('assets/icons/star.jpg',)),
            ],
          ),
        ),
      ),
      endDrawer: DrawerSide(),
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
      body:ListView(
        children: [
          Container(
            height: 170,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  height:55,
                    width: 280,
                    color:Color(0xffFDB640),
                    child: Center(child: Text('المتجر',
                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 34,letterSpacing: 3),
                    ))),
                Padding(
                  padding: const EdgeInsets.only(left: 45.0,right: 45),
                  child: Container(
                    height: 115,
                    width: 300,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text('مرحبا بكم على متجر نوتريانا الذي نقترح فيه عليكم مكملات غذائية طبيعية تساعد في زيادة قوة الجسم ، زيادة الكتلة العضلية و محاربة أعراض القولون العصبي',
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),

          ),
          SizedBox(height: 5,),
          _buildHerbsProduct(context),
        ],
      ) ,
    );
  }
}
