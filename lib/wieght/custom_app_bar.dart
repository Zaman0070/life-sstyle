import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
 String? title;
 Function()? onTab;
 CustomAppBar({this.title,this.onTab});
  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Color(0xffF39B2D),
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: onTab,
                icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),

            Center(child: Text(title!,
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
            )),
            Builder(
              builder: (context){
                return IconButton(onPressed: (){
                  Scaffold.of(context).openEndDrawer();
                },
                    icon: Image.asset('assets/icons/menu.png',fit: BoxFit.cover,color: Colors.white,)
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
