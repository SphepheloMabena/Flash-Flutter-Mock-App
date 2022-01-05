import 'package:flash_mock/ScreenComfirmation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'LinePainter.dart';
import 'SummaryInfo.dart';
String networkType="";
int amount=0;
String cellphone="";



class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;

    paintZigZag(canvas, paint, Offset(0, 100), Offset(200, 100), 25, 10);
  }

  void paintZigZag(Canvas canvas, Paint paint, Offset start, Offset end,
      int zigs, double width) {
    assert(zigs.isFinite);
    assert(zigs > 0);
    canvas.save();
    canvas.translate(0, 20);
    end = end - start;
    canvas.rotate(math.atan2(end.dy, end.dx));
    final double length = end.distance;
    final double spacing = length / (zigs * 2.0);
    final Path path = Path()..moveTo(0.0, 0.0);
    for (int index = 0; index < zigs; index += 1) {
      final double x = (index * 3.5 + 1.0) * spacing;
      final double y = width * ((index % 2.0) * 2.0 - 1.0);
      path.lineTo(x, y);
    }
    path.lineTo(length, 0.0);
    canvas.drawPath(path, paint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class ScreenSummary extends StatefulWidget {
  SummaryInfo info;
  ScreenSummary(this.info)
  {
    networkType=this.info.networkName;
    amount=this.info.amount;
    cellphone=this.info.cellphoneNumber;
  }
  @override
  State<ScreenSummary> createState() => _ScreenSummaryState();
}

class _ScreenSummaryState extends State<ScreenSummary> {
  double opacity=1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Row(
          children: [
            SizedBox(
                width:130,child:
            Align(
                alignment: Alignment.centerRight,child: Text('Airtime')
            )
            ),
            SizedBox(
                width:130,child:
            Align(
                alignment: Alignment.centerRight,child: Text('R902.43')
            )
            ),
          ],
        ),
      ),
      body: Container(
        width:double.maxFinite,
        height:double.maxFinite,
        color: Colors.green[400],
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:20),
                child: Container(
                  width: 350,
                  height: 70,
                  child: Center(
                    child: Text('SUMMARY',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    )),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color:Colors.black,
                          width: 1
                      )
                  ),

                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:0),
                child: Container(
                  width: 350,
                  height: 70,
                  child: Row(
                    children: [
                      SizedBox(
                        width:170 ,
                        height: 70,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('TYPE',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),),
                          ),
                        ),

                      ),
                      SizedBox(
                        width:170 ,
                        height: 70,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text('TOP UP',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20
                            ),),
                        ),

                      )
                    ],
                  ),

                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color:Colors.black,
                          width: 1
                      )
                  ),

                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:0),
                child: Container(
                  width: 350,
                  height: 70,
                  child: Row(
                    children: [
                      SizedBox(
                        width:170 ,
                        height: 80,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Network',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),),
                          ),
                        ),

                      ),
                      SizedBox(
                        width:170 ,
                        height: 70,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text('${networkType}',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20
                            ),),
                        ),

                      )
                    ],
                  ),

                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color:Colors.black,
                          width: 1
                      )
                  ),

                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:0),
                child: Container(
                  width: 350,
                  height: 70,
                  child: Row(
                    children: [
                      SizedBox(
                        width:170 ,
                        height: 70,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Amount',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),),
                          ),
                        ),

                      ),
                      SizedBox(
                        width:170 ,
                        height: 70,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text('R${amount}',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20
                            ),),
                        ),

                      )
                    ],
                  ),

                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color:Colors.black,
                          width: 1
                      )
                  ),

                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:0),
                child: Container(

                  width: 350,
                  height: 70,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 350,
                        height: 50,
                        child: Row(
                          children: [
                            SizedBox(
                              width:210 ,
                              height: 50,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('Cellphone Number:',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20
                                    ),),
                                ),
                              ),

                            ),
                            SizedBox(
                              width:120 ,
                              height: 50,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text('${cellphone}',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20
                                  ),),
                              ),

                            ),
                            ],
                        ),
                      ),

                    ],
                  ),

                  decoration: BoxDecoration(

                      image: DecorationImage(
                        fit: BoxFit.fill,


                        image: AssetImage('images/background.png'),

                      )

                  ),

                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.only(top:150),
              child:  TextButton(
                onPressed: (){
                  if(opacity==1)
                  {

                    Navigator.push(context,MaterialPageRoute(
                  builder: (context)
                  {
                  SummaryInfo info=SummaryInfo(networkType,amount,cellphone);
                    return ScreenConfirmation(info);

                  }
                    ));

                  }
                  else
                  {

                  }
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(0)
                    )
                ),
                child: Container(
                  width: 340,
                  height: 70,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: Text('SELL',style: TextStyle(
                            color: Colors.white.withOpacity(opacity),
                            fontSize: 20
                        ),),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left:80),
                        child: Icon(Icons.double_arrow_outlined,size: 30,color: Colors.white.withOpacity(opacity),),
                      ),

                    ],
                  ),

                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(opacity),
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
            )

          ],
        ),

      ),

    );
  }
}
