import 'package:flutter/material.dart';

import 'SummaryInfo.dart';

String title='';
int amount=0;
String cellphone="";
class ScreenConfirmation extends StatefulWidget {
  SummaryInfo info;
  ScreenConfirmation(this.info)
  {
    title="${this.info.networkName} Top Up";
    amount=this.info.amount;
    cellphone=this.info.cellphoneNumber;
  }
  @override
  State<ScreenConfirmation> createState() => _ScreenConfirmationState();
}

class _ScreenConfirmationState extends State<ScreenConfirmation> {
  double opacity=1;

  String networkType="Vodacom";



  String cellphone="0680077690";
  bool isswitched=true;
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
                alignment: Alignment.centerRight,child: Text('R2370879')
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
                    child: Text('SALE COMPLETE',
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
                        width:190 ,
                        height: 70,
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
                        height: 70,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text('${cellphone}',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20
                            ),),
                        ),

                      ),
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: Icon(Icons.add_circle,
                          color: Colors.green,
                          size: 30,
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
                            child: Text('Your SALE:',
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
                          child: Text(' ${title}',
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
                            child: Text('Total',
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
                padding: const EdgeInsets.only(top:15),
                child:  TextButton(
                  onPressed: (){},
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(0)
                      )
                  ),
                  child: Container(
                    width: 350,
                    height: 70,
                    child: Row(
                      children: [
                        SizedBox(
                          width:250 ,
                          height: 70,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(Icons.add_chart,size: 30,color: Colors.black,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text('Add to Quick Cell:',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20
                                    ),),
                                ),
                              ],
                            ),
                          ),

                        ),
                        SizedBox(
                          width:80 ,
                          height: 70,
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Switch(
                                value: isswitched,
                                activeColor: Colors.blue,
                                activeTrackColor: Colors.green,

                                onChanged: (value) {
                                  setState(() {
                                    isswitched=false;

                                  });
                                },
                              ),
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
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:10),
                child:  TextButton(
                  onPressed: (){},
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(0)
                      )
                  ),
                  child: Container(
                    width: 350,
                    height: 70,
                    child: Row(
                      children: [
                        SizedBox(
                          width:250 ,
                          height: 70,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(Icons.autorenew_rounded,size: 30,color: Colors.black,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text('Sell Again',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),),
                                ),
                              ],
                            ),
                          ),

                        ),
                        SizedBox(
                          width:80 ,
                          height: 70,
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.arrow_forward_ios,
                                size: 30,
                                color: Colors.black,)
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
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:10),
                child:  TextButton(
                  onPressed: (){},
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(0)
                      )
                  ),
                  child: Container(
                    width: 350,
                    height: 70,
                    child: Row(
                      children: [
                        SizedBox(
                          width:250 ,
                          height: 70,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(Icons.add_chart,size: 30,color: Colors.black,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text('Reprint',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ),
                              ],
                            ),
                          ),

                        ),
                        SizedBox(
                          width:80 ,
                          height: 70,
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.arrow_forward_ios,
                                size: 30,
                                color: Colors.black,)
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
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:10),
                child:  TextButton(
                  onPressed: (){},
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(0)
                      )
                  ),
                  child: Container(
                    width: 350,
                    height: 70,
                    child: Row(
                      children: [
                        SizedBox(
                          width:250 ,
                          height: 70,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(Icons.share,size: 30,color: Colors.black,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text('Share',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ),
                              ],
                            ),
                          ),

                        ),
                        SizedBox(
                          width:80 ,
                          height: 70,
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.arrow_forward_ios,
                                size: 30,
                                color: Colors.black,)
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
            ),








          ],
        ),

      ),

    );
  }
}
