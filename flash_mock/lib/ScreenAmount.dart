import 'dart:convert';

import 'package:flash_mock/InputInfo.dart';
import 'package:flash_mock/KeyboardCurrency.dart';
import 'package:flash_mock/NetworkInfo.dart';
import 'package:flash_mock/ScreenInputRequired.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:http/http.dart' as http;

import 'Vendors.dart';

String networkType="...";

getNetworkData()async{
  var session=FlutterSession();
  networkType= await session.get('network');

}


var list=<String,String>{
  "hello":"hello"
};
Future<http.Response> sendFixedAmountJson(int sku,int amountInCents) async {
  List fixedDList=[];
  var fixedAmountData=<String,dynamic>{
    "sku":sku,
    "amountInCents":amountInCents,
    "name":"",
    "description":"",
    "isOffline":false,
    "isPromo":false,
    "message":""
  };
  fixedDList.add(fixedAmountData);
  var fixedAmount=<String,dynamic>{
    "FixedAmountItems":fixedDList.toSet()
  };
  var response= await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/albums'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      'preDefinedAmount':fixedAmount.toString() ,

    }),
  );
  if(response.statusCode == 201)
    {
      print("All is good");
    }
  else{
    print("Server Error");
  }
  return response;
}

class ScreenAmount extends StatefulWidget {
  NetworkInfo info;
  ScreenAmount(this.info)
  {
    networkType=info.NetworkName;
  }


  @override
  State<ScreenAmount> createState() => _ScreenAmountState();
}

class _ScreenAmountState extends State<ScreenAmount> {
  int amountRands=0;


  double opacity=0.3;

  String amount="--";
  int SKU=0;
  int amountInCents=0;

  @override
  Widget build(BuildContext context) {
    getNetworkData();



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
                padding: const EdgeInsets.only(top:15),
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
                padding: const EdgeInsets.only(top:15),
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
                          child: Text('${amount}',
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
              child: SizedBox(
                width: 350,
                height: 70,
                child: Row(
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(0)
                        )
                      ),
                      onPressed: (){
                        setState(() {
                          amount="R10";
                          SKU=6933367;
                          amountInCents=1000;
                          opacity=1;
                          amountRands=10;
                        });
                      },
                      child: Container(
                        width: 116,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 1),
                          color: Colors.white
                        ),
                        child: Center(
                          child: Text('R10',style: TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(0)
                          )
                      ),
                      onPressed: (){setState(() {
                        amount="R20";
                        SKU=6933368;
                        amountInCents=2000;
                        opacity=1;
                        amountRands=20;
                      });

                      },
                      child: Container(
                        width: 116,
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 1),
                            color: Colors.white
                        ),
                        child: Center(
                          child: Text('R20',style: TextStyle(
                              color: Colors.black,
                            fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(0)
                          )
                      ),
                      onPressed: (){
                        setState(() {
                          amount="R50";
                          SKU=6933369;
                          amountInCents=5000;
                          opacity=1;
                          amountRands=50;
                        });
                      },
                      child: Container(
                        width: 116,
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 1),
                            color: Colors.white
                        ),
                        child: Center(
                          child: Text('R50',style: TextStyle(
                              color: Colors.black,
                            fontSize: 20
                          ),),
                        ),
                      ),
                    )
                  ],
                ),

              ),
            ),
            Center(
              child: SizedBox(
                width: 350,
                height: 70,
                child: Row(
                  children: [
                    TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(0)
                          )
                      ),
                      onPressed: (){
                        setState(() {
                          amount="R100";
                          SKU=6933370;
                          amountInCents=10000;
                          opacity=1;
                          amountRands=100;

                        });
                      },
                      child: Container(
                        width: 116,
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 1),
                            color: Colors.white
                        ),
                        child: Center(
                          child: Text('R100',style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(0)
                          )
                      ),
                      onPressed: (){
                        setState(() {
                          amount="R150";
                          SKU=6933371;
                          amountInCents=15000;
                          opacity=1;
                          amountRands=150;
                        });
                      },
                      child: Container(
                        width: 116,
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 1),
                            color: Colors.white
                        ),
                        child: Center(
                          child: Text('R150',style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(0)
                          )
                      ),
                      onPressed: (){
                        setState(() {
                          amount="R200";
                          SKU=6933367;
                          amountInCents=20000;
                          opacity=1;
                          amountRands=200;
                        });
                      },
                      child: Container(
                        width: 116,
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 1),
                            color: Colors.white
                        ),
                        child: Center(
                          child: Text('R200',style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    )
                  ],
                ),

              ),
            ),
            Center(
              child: SizedBox(
                width: 350,
                height: 70,
                child: Row(
                  children: [
                    TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(0)
                          )
                      ),
                      onPressed: (){
                        setState(() {
                          amount="R250";
                          SKU=6933372;
                          amountInCents=25000;
                          opacity=1;
                          amountRands=250;
                        });
                      },
                      child: Container(
                        width: 116,
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 1),
                            color: Colors.white
                        ),
                        child: Center(
                          child: Text('R250',style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(0)
                          )
                      ),
                      onPressed: (){
                        setState(() {
                          amount="R300";
                          SKU=6933372;
                          amountInCents=30000;
                          opacity=1;
                          amountRands=300;

                        });
                      },
                      child: Container(
                        width: 116,
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 1),
                            color: Colors.white
                        ),
                        child: Center(
                          child: Text('R300',style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(0)
                          )
                      ),
                      onPressed: (){
                        setState(() {
                          amount="R350";
                          SKU=6933373;
                          amountInCents=35000;
                          opacity=1;
                          amountRands=350;

                        });
                      },
                      child: Container(
                        width: 116,
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 1),
                            color: Colors.white
                        ),
                        child: Center(
                          child: Text('R350',style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    )
                  ],
                ),

              ),
            ),
            Center(
              child: TextButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(
                    builder:(context)
                        {
                          return KeyboardCurrency();
                        }
                  ));
                },
                style: ButtonStyle(
                  padding:MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.all(0)
                  )
                ),
                child: Container(
                  width: 350,
                  height: 70,
                  child: Center(
                    child: Text('Select own Amount',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20

                    ),),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 1),
                    color: Colors.white
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:20),
              child:  TextButton(
                onPressed: (){
                  if(opacity==1)
                  {
                    //sends the json data to the mock web service server
                    sendFixedAmountJson(SKU,amountInCents);
                    Navigator.push(context,MaterialPageRoute(builder: (context)
                    {
                      InputInfo info=InputInfo(networkType,amountRands);
                      return ScreenInputRequire(info);

                    }));

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
