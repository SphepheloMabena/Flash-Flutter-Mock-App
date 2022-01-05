import 'package:flash_mock/InputInfo.dart';
import 'package:flash_mock/KeyboardCellphone.dart';
import 'package:flash_mock/ScreenSummary.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
String networkName="";
int amount=0;
//create web service for menu
Future<http.Response> menuJson(int sku,int amountInCents) async {

  var response= await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/albums'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      "menuInfo":"airtime",
      "purchaseTypeSection":"",
      "providerSection":"",
      "description":"",
      "availableInputFields":"",
      "groupInfoSection":"",
      "products":"",
      "expiraryTime":0,
      'currentVersionNumber':34,
      "availableDoneActions":""
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

jsonEncode(Map<String, dynamic> map) {
}
class ScreenInputRequire extends StatefulWidget {
  InputInfo info;
  ScreenInputRequire(this.info){
    networkName=info.networkName;
    amount=info.amount;
  }



  @override
  State<ScreenInputRequire> createState() => _ScreenInputRequireState();
}

class _ScreenInputRequireState extends State<ScreenInputRequire> {
  double opacity=0.3;
  String networkType="Vodacom";


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
                          child: Text('${networkName}',
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
                  onPressed: (){

                    Navigator.push(context,MaterialPageRoute(
                      builder: (context)
                          {
                            InputInfo info=InputInfo(networkName,amount);
                            return KeyboardCellphone(info);
                          }
                    ));
                  },
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


            Padding(
              padding: const EdgeInsets.only(top:150),
              child:  TextButton(
                onPressed: (){
                  if(opacity==1)
                  {

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
