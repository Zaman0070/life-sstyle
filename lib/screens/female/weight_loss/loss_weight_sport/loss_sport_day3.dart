import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:life_style_app/screens/drawers/f_l_drawer.dart';

import '../../../drawers/m_g_drawer_side.dart';
import 'loss_weigt_sport_calender.dart';

class LossSportDay3 extends StatefulWidget {
  const LossSportDay3({Key? key}) : super(key: key);

  @override
  _LossSportDay3State createState() => _LossSportDay3State();
}

class _LossSportDay3State extends State<LossSportDay3> {
  final CountDownController _controller = CountDownController();

  bool onPressed =false;
  int duration = 600;

  button({required IconData icon, VoidCallback? onPressed}) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color:  Color(0xffF4A02C),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(icon),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: FemaleLossDrawer(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 75,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    },
                        icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),

                    // Center(child: Text('اليوم الأول',
                    // style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    // )),
                    Builder(
                      builder: (context){
                        return IconButton(onPressed: (){
                          Scaffold.of(context).openEndDrawer();
                        },
                            icon: Image.asset('assets/icons/menu.png',fit: BoxFit.cover,color: Colors.black,)
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 205,
              child: CircularCountDownTimer(
                duration: duration,
                initialDuration: 0,
                controller:_controller,
                width: MediaQuery.of(context).size.width / 1.6,
                height: MediaQuery.of(context).size.height / 2,
                ringColor: Color(0xffF4A02C),
                fillColor:   Colors.grey,
                strokeWidth: 15.0,
                strokeCap: StrokeCap.round,
                textStyle: TextStyle(
                    fontSize: 33.0, color: Colors.black, fontWeight: FontWeight.bold),
                textFormat: CountdownTextFormat.MM_SS,
                isReverse: false,
                isTimerTextShown: true,
                isReverseAnimation: false,
                autoStart: false,

                onStart: () {

                },
                onComplete: () {
                  print('Countdown Ended');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffF7B044),
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: IconButton(
                        icon: onPressed
                            ? Icon(
                          Icons.pause,
                          size: 25.0,
                        )
                            : Icon(Icons.play_arrow, size: 25.0),
                        onPressed: () {
                          setState(() {
                            if(onPressed){
                              onPressed =false;
                              _controller.pause();

                            }else{
                              onPressed=true;
                              _controller.resume();
                            }

                          });
                        }),
                  ),
                  button(icon: Icons.stop, onPressed: (){
                    _controller.restart();
                    _controller.pause();
                    setState(() {
                      onPressed =false;
                    });
                  })
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/2.1,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: ClipPath(
                      clipper: WaveClipperOne(reverse: true),
                      child: Container(
                        height: MediaQuery.of(context).size.width/1.5,
                        width: MediaQuery.of(context).size.width,
                        color: Color(0xffF4A02C),
                        child: Center(
                            child: Column(
                              children: const [
                                SizedBox(height: 60,),
                                Text("Correcting posture",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold
                                  ),),
                                Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 20.0,right: 20),
                                    child: Text("عندما يبدأ الناس في تحسين وضعيتهم ، قد يكتسبون وعيًا أكبر بجسمهم.",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                      textAlign:TextAlign.center ,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      left: 110,
                      child: Image.asset('assets/loss_sp/loss4.png',height: 240,)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
