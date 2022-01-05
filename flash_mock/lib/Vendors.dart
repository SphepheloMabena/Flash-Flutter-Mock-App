import 'package:flash_mock/NetworkInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';

import 'ScreenAmount.dart';
//ignore: import_of_legacy_library_into_null_safe

setNetworkType(String networkType) async
{
  var session = FlutterSession();
  await session.set("network", networkType);

}
class Vendors extends StatefulWidget {
  @override
  State<Vendors> createState() => _VendorsState();
}

class _VendorsState extends State<Vendors> {
  double opacity=0.3;
  String networkType="-";
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
                  height: 80,
                  child: Row(
                    children: [
                      SizedBox(
                        width:170 ,
                        height: 80,
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
                        height: 80,
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
                padding: const EdgeInsets.only(top:20),
                child: Container(
                  width: 350,
                  height: 80,
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
                        height: 80,
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
              child: SizedBox(
                width: 350,
                height: 120,
                child:Row(
                  children: [
                    TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(0)
                          )
                      ),
                      onPressed: (){
                        setState(() {
                          opacity=1;
                          networkType="Vodacom";
                        });
                      },
                      child: Container(
                        width: 175,
                        height: 120,
                        child: Center(
                          child: SizedBox(
                            width: 175,
                            height: 120,
                            child: Image(
                              image: AssetImage('images/vodacom.png'),
                            ),
                          )
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
                    TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(0)
                          )
                      ),
                      onPressed: (){
                        setState(() {
                          opacity=1;
                          networkType="Cell C";
                        });
                      },

                      child: Container(
                        width: 175,
                        height: 120,
                        child:  Center(
                            child: SizedBox(
                              width: 110,
                              height: 110,
                              child: Image(
                                image: AssetImage('images/cellc.png'),
                              ),
                            )
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
                  ],
                ) ,
              ),
            ),
            Center(
              child: SizedBox(
                width: 350,
                height: 120,
                child:Row(
                  children: [
                    TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(0)
                          )
                      ),
                      onPressed: (){
                        setState(() {
                          opacity=1;
                          networkType="MTN";
                        });
                      },
                      child: Container(
                        width: 175,
                        height: 120,
                        child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top:30,left: 20),
                              child: SizedBox(
                                width: 110,
                                height: 110,
                                child:  Center(
                                    child: SizedBox(
                                      width: 175,
                                      height: 120,
                                      child: Image(
                                        image: AssetImage('images/mtn.png'),
                                      ),
                                    )
                                )
                              ),
                            )
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
                    TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(0)
                          )
                      ),
                      onPressed: (){
                        setState(() {
                          opacity=1;
                          networkType="Telkom";
                        });
                      },

                      child: Container(
                        width: 175,
                        height: 120,
                        child:  Center(
                            child: SizedBox(
                              width: 175,
                              height: 120,
                              child: Image(
                                image: AssetImage('images/telkom.png'),
                              ),
                            )
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
                  ],
                ) ,
              ),
            ),
            Center(
              child: Container(
                color: Colors.white,
                width: 350,
                height: 120,
                child:TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(0)
                      )
                  ),
                  onPressed: (){
                    setState(() {
                      opacity=1;
                      networkType="Virgin";
                    });
                  },
                  child: Center(
                    child: Container(
                      width: 175,
                      height: 120,
                      child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top:30,left: 20),
                            child: SizedBox(
                                width: 175,
                                height: 120,
                                child:  Center(
                                    child: SizedBox(
                                      width: 175,
                                      height: 170,
                                      child: Image(
                                        image: AssetImage('images/virgin.png'),
                                      ),
                                    )
                                )
                            ),
                          )
                      ),

                    ),
                  ),
                ) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:5),
              child:  TextButton(
                onPressed: (){
                  if(opacity==1)
                  {
                    setNetworkType(networkType);
                    Navigator.push(context,MaterialPageRoute(
                      builder: (context) {
                        NetworkInfo infom=NetworkInfo(networkType);
                        return ScreenAmount(infom);
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
