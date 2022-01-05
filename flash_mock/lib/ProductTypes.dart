import 'package:flash_mock/Vendors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
//ignore: import_of_legacy_library_into_null_safe

setNetworkType(String networkType) async
{
  var session = FlutterSession();
  await session.set("network", networkType);

}

class ProductTypes extends StatefulWidget {
  @override
  State<ProductTypes> createState() => _ProductTypesState();
}

class _ProductTypesState extends State<ProductTypes> {
  double opacity=0.3;
  String productType="-";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Row(
          children: [
            SizedBox(
                width:150,child:
          Align(
              alignment: Alignment.centerRight,child: Text('Airtime')
          )
            ),
        SizedBox(
            width:150,child:
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
                          child: Text('${productType}',
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
                      onPressed: (){},
                      child: Container(
                        width: 175,
                        height: 120,
                        child: Center(
                          child: Text(
                            'Voucher',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                            ),
                          ),
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
                          productType="TOP UP";
                        });
                      },

                      child: Container(
                        width: 175,
                        height: 120,
                        child: Center(
                          child: Text(
                            'Top Up',
                            style: TextStyle(
                              color: Colors.black,
                                fontSize: 20
                            ),
                          ),
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
                      onPressed: (){},
                      child: Container(
                        width: 175,
                        height: 120,
                        child: Center(
                          child: Column(
                            children: [Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top:30,left: 20),
                                child: SizedBox(
                                  width: 130,
                                  height: 20,
                                  child: Text(
                                    'ezziAirtime',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top:5),
                                child: Container(
                                  width: 70,
                                  height: 20,
                                  color: Colors.green,
                                  child:Text("Earn More",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),)
                                ),
                              ),
                            )],
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
                      onPressed: (){},

                      child: Container(
                        width: 175,
                        height: 120,
                        child: Center(
                          child: Text(
                            'Global Airtime',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20
                            ),
                          ),
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
            Padding(
              padding: const EdgeInsets.only(top:180),
              child:  TextButton(
                onPressed: (){
                  if(opacity==1)
                    {

                      Navigator.push(context,MaterialPageRoute(
                        builder:(context)
                            {
                              return Vendors();
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
