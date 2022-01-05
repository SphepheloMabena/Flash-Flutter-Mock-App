import 'package:flash_mock/InputInfo.dart';
import 'package:flash_mock/SummaryInfo.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'ScreenSummary.dart';

String data="";
var info;

String networkName="";
int amountRands=0;





class KeyboardCellphone extends StatefulWidget {
  InputInfo info;
  KeyboardCellphone(this.info)
  {
    networkName=info.networkName;
    amountRands=info.amount;

  }
  @override
  State<KeyboardCellphone> createState() => _KeyboardCellphoneState();
}

class _KeyboardCellphoneState extends State<KeyboardCellphone> {
  String amount="";

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [Icon(Icons.cancel
            ,size: 20,
            color: Colors.white,
          ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Enter Cellphone Number",style: TextStyle(
                color: Colors.white,
                fontSize: 20,

              ),),
            )],
        ),
      ),
      body: SingleChildScrollView(

        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 250,
              color:HexColor('#272626'),
              child: Center(
                child: Text("${amount}",style: TextStyle(
                    fontSize: 40,
                    color: Colors.white
                ),),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 800,
              color: HexColor('#B5B5B5'),
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: SizedBox(
                        width: 350,
                        height: 65,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: TextButton(
                                onPressed: (){
                                  setState(() {
                                    amount=amount + "1";

                                  });
                                },
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.all(0)
                                    )
                                ),
                                child: Container(
                                  width: 105,
                                  height: 65,

                                  child: Center(
                                    child: Text("1",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25
                                    ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: TextButton(
                                onPressed: (){
                                  setState(() {
                                    amount=amount + "2";
                                  });
                                },
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.all(0)
                                    )
                                ),
                                child: Container(
                                  width: 105,
                                  height: 65,

                                  child: Center(
                                    child: Text("2",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25
                                    ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7)
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: TextButton(
                                onPressed: (){
                                  setState(() {
                                    amount=amount + "3";

                                  });
                                },
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.all(0)
                                    )
                                ),
                                child: Container(
                                  width: 105,
                                  height: 65,

                                  child: Center(
                                    child: Text("3",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25
                                    ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:BorderRadius.circular(7)
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: 350,
                        height: 65,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: TextButton(
                                onPressed: (){
                                  setState(() {
                                    amount=amount + "4";

                                  });
                                },
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.all(0)
                                    )
                                ),
                                child: Container(
                                  width: 105,
                                  height: 65,

                                  child: Center(
                                    child: Text("4",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25
                                    ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7)
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: TextButton(
                                onPressed: (){
                                  setState(() {
                                    amount=amount + "5";

                                  });
                                },
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.all(0)
                                    )
                                ),
                                child: Container(
                                  width: 105,
                                  height: 65,

                                  child: Center(
                                    child: Text("5",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25
                                    ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7)
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: TextButton(
                                onPressed: (){
                                  setState(() {
                                    amount=amount + "6";

                                  });
                                },
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.all(0)
                                    )
                                ),
                                child: Container(
                                  width: 105,
                                  height: 65,

                                  child: Center(
                                    child: Text("6",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25
                                    ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7)
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: 350,
                        height: 65,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: TextButton(
                                onPressed: (){
                                  setState(() {
                                    amount=amount + "7";

                                  });
                                },
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.all(0)
                                    )
                                ),
                                child: Container(
                                  width: 105,
                                  height: 65,

                                  child: Center(
                                    child: Text("7",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25
                                    ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7)
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: TextButton(
                                onPressed: (){
                                  setState(() {
                                    amount=amount + "8";

                                  });
                                },
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.all(0)
                                    )
                                ),
                                child: Container(
                                  width: 105,
                                  height: 65,

                                  child: Center(
                                    child: Text("8",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25
                                    ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7)
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: TextButton(
                                onPressed: (){
                                  setState(() {
                                    amount=amount + "9";

                                  });
                                },
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.all(0)
                                    )
                                ),
                                child: Container(
                                  width: 105,
                                  height: 65,

                                  child: Center(
                                    child: Text("9",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25
                                    ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7)
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: 350,
                        height: 65,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: SizedBox(
                                width: 105,
                                height: 65,

                                child: TextButton(
                                  onPressed: (){
                                    setState(() {
                                      if(amount.isNotEmpty)
                                      {
                                        amount=amount.substring(0,amount.length-1);
                                      }
                                    });
                                  },
                                  style: ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.all(0)
                                    ),
                                  ),
                                  child: Container(
                                    width: 105,
                                    height: 65,


                                    child: Icon(Icons.backspace,size: 30,color: Colors.white,),
                                    decoration: BoxDecoration(
                                        color:Colors.grey,
                                        borderRadius: BorderRadius.circular(7)
                                    ),


                                  ),
                                ),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:
                              15),
                              child: TextButton(
                                onPressed: (){
                                  setState(() {
                                    amount=amount + "0";

                                  });
                                },
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.all(0)
                                    )
                                ),
                                child: Container(
                                  width: 105,
                                  height: 65,

                                  child: Center(
                                    child: Text("0",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25
                                    ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7)
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: TextButton(
                                onPressed: (){
                                  setState(() {
//                                    if (amount == "0")
//                                    {
//                                      amount="3";
//                                    }
//                                    else{
//                                      amount=amount + "3";
//                                    }
                                  SummaryInfo info=SummaryInfo(networkName,amountRands,amount);
                                  Navigator.push(context,MaterialPageRoute(
                                    builder: (context)
                                        {
                                          return ScreenSummary(info);
                                        }
                                  ));

                                  });
                                },
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.all(0)
                                    )
                                ),
                                child: Container(
                                  width: 105,
                                  height: 65,


                                  child: Center(
                                      child: Row(children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left:20),
                                          child: Text('DONE',style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,

                                          ),),
                                        ),
                                        Icon(Icons.keyboard_arrow_right,size: 26,color: Colors.white,)

                                      ],)
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(7)
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
