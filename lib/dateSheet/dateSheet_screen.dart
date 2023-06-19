import 'package:flutter/material.dart';
import 'package:school/seniorScreen/constants.dart';
import 'dateSheet_data.dart';

class DateSheetScreen extends StatelessWidget {
  static const String routeName = 'DateSheetScreen';
   DateSheetScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateSheet'),
      ),
      body: Container(
         width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
           color: kOtherColor,
           borderRadius: BorderRadius.only(
            topRight: Radius.circular(kDefultPadding),
            topLeft: Radius.circular(kDefultPadding),
           ),
        ),
        child: ListView.builder(
          itemCount: datasheet.length,
          itemBuilder: (context, index){
          return Container(
            margin: EdgeInsets.only(
              left: kDefultPadding/2,
              right: kDefultPadding/2,
            ),
           padding: EdgeInsets.all(kDefultPadding),
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: kDefultPadding,
                  child: Divider(
                    thickness: 1.0,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // list column
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(datasheet[index].date.toString(),
                        style: TextStyle(
                          color: kTextBlackColor,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                          Text(datasheet[index].monthName,
                        style: TextStyle(
                          color: kTextBlackColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Text(
                            datasheet[index].subjectName,
                            style: TextStyle(
                              color: kTextBlackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            ),
                             Text(
                            datasheet[index].dayName,
                            style: TextStyle(
                              color: kTextBlackColor,
                              fontWeight: FontWeight.w300,
                              fontSize: 13,
                            ),
                            ),
                      ],
                    ),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      datasheet[index].time,
                      style: TextStyle(
                        color: kTextLightColor,
                        fontWeight: FontWeight.w300,
                         fontSize: 13,
                      ),
                      ),
                  ],
                 ),
                  ],
                ),
                SizedBox(
                  child: Divider(
                   thickness: 1.0,
                  ),
                ),

              ],
            ),
          );
        }
      ),
      ),
    );
  }
}