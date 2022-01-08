import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_style_app/models/product_model.dart';
import 'package:life_style_app/shop/product_unit.dart';

import 'count.dart';

class SingleProduct extends StatefulWidget {
  final String? productUrl;
  final String? productName;
  final int? productPrice;
  final Function()? onTap;
  final String? productId;
  final ProductModel productUnit;

  SingleProduct({required this.productUnit,this.productUrl,this.productName,this.onTap,this.productPrice,this.productId});

  @override
  _SingleProductState createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  var unitData;
  var firstValue;
  @override
  Widget build(BuildContext context) {
    // widget.productUnit!.productUnit!.firstWhere((element) {
    //   setState(() {
    //     firstValue = element;
    //
    //   });
    //   return true;
    // });
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
      Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 115.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 110,
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  InkWell(
                    onTap:widget.onTap,
                    child: Row(
                      children: [
                        Container(
                          height:100,
                          width: 70,
                          child: Image.network(
                            widget.productUrl!,fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(widget.productName!,
                              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Text('مكمل غذائي بعسـل الليمون'),
                            Text(
                              '${widget.productPrice}\$/${unitData ?? firstValue}',
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 40,),


                      ],
                    ),
                  ),
                  Column(
                    children: [
                      ProductUnit(
                        onTap: (){

                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children:widget.productUnit.productUnit!.map<Widget>((data){
                                    return Column(
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                          child: InkWell(
                                            onTap: ()async {
                                              setState(() {
                                                unitData = data;
                                              });
                                              Navigator.of(context).pop();
                                            },
                                            child: Text(data,
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  }).toList(),

                                );
                              });

                        },
                        title:unitData ?? firstValue,

                      ),
                      SizedBox(height: 8,),
                      Count(
                        productId: widget.productId,
                        productName: widget.productName,
                        productUrl: widget.productUrl,
                        productPrice: widget.productPrice,
                        productUnit: unitData ?? firstValue,

                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Row(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text(widget.productName!,
            //           style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            //         ),
            //         Text(
            //           '${widget.productPrice}\$/${unitData ?? firstValue}',
            //           style: TextStyle(
            //             fontWeight: FontWeight.w200,
            //             fontSize: 14,
            //           ),
            //         ),
            //         SizedBox(
            //           height: 8,
            //         ),
            //         Row(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             ProductUnit(
            //               onTap: (){
            //
            //                 // showModalBottomSheet(
            //                 //     context: context,
            //                 //     builder: (context) {
            //                 //       return Column(
            //                 //         mainAxisSize: MainAxisSize.min,
            //                 //         children:widget.productUnit.productUnit!.map<Widget>((data){
            //                 //           return Column(
            //                 //             children: [
            //                 //               Padding(
            //                 //                 padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            //                 //                 child: InkWell(
            //                 //                   onTap: ()async {
            //                 //                     setState(() {
            //                 //                       unitData = data;
            //                 //                     });
            //                 //                     Navigator.of(context).pop();
            //                 //                   },
            //                 //                   child: Text(data,
            //                 //                   style: TextStyle(
            //                 //                   fontSize: 18,
            //                 //                   ),
            //                 //                   ),
            //                 //                 ),
            //                 //               ),
            //                 //             ],
            //                 //           );
            //                 //         }).toList(),
            //                 //
            //                 //       );
            //                 //     });
            //
            //               },
            //               title:unitData ?? firstValue,
            //
            //             ),
            //             SizedBox(
            //               width: 5,
            //             ),
            //            // Count(
            //            //   productId: widget.productId,
            //            //   productName: widget.productName,
            //            //   productUrl: widget.productUrl,
            //            //   productPrice: widget.productPrice,
            //            //   productUnit: unitData ?? firstValue,
            //            // ),
            //           ],
            //         ),
            //       ],
            //     ),

          ],
        ),
    ),
      ),
          Divider(
            thickness: 1.5,

          )
        ],
      ),

    );
  }
}
