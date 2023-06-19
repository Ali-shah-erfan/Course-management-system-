import 'package:flutter/material.dart';
import '../seniorScreen/constants.dart';
import 'fee_data.dart';
import 'fee_widgets.dart';

class FeeScreen extends StatelessWidget {
  static String routeName = 'FeeScreen';
  FeeScreen({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Center(child: Text('Fee')),
        ///
       ),
       body: Column(
        children: [
           Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: kOtherColor,
              ),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(20),
                itemCount: fee.length,
                itemBuilder: (context, int index){
              return Container(
                  margin:EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                               borderRadius: BorderRadius.vertical(
                               top: Radius.circular(20),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                               color: kTextLightColor,
                               blurRadius: 2,
                            ),
                          ]
                        ),
                         child: Column(
                          children: [
                            FeeDatRow(
                              title: 'receipt No', 
                              statusValue: fee[index].receipNo
                              ),
                              SizedBox(
                                height: 20,
                                child: Divider(
                                  thickness: 1.0,
                                ),
                              ),
                              FeeDatRow(title: 'Month', statusValue:fee[index].month),
                              sizedBox,
                              FeeDatRow(title: 'Payment Date', statusValue:fee[index].date),
                              sizedBox,
                              FeeDatRow(title: 'Status', statusValue:fee[index].paymentStatus),
                              sizedBox,
                              FeeDatRow(
                              title: 'Total Amount', 
                              statusValue: fee[index].totalAmount
                              ),
                          ],
                         ), 
                      ),
                      
                      FeeButton(
                        title: fee[index].btnStatus,
                         icondate: fee[index].btnStatus =='Paid'
                         ?Icons.download_outlined: Icons.arrow_forward_ios_outlined,
                          onPress: (){},

                          ),

                    ],
                  ),
              );}),
            ),
            ),
        ],
       ),
    );
  }
}


