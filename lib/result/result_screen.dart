import 'package:flutter/material.dart';
import 'package:school/result/result_component.dart';
import 'package:school/result/result_data.dart';
import '../seniorScreen/constants.dart';

class ResultScreen extends StatelessWidget {
  static String routeName = 'ResultScreen';

  @override
  Widget build(BuildContext context) {
    //int oMarks = result.map((e) => e.botainMarks).sum.toInt();
    // int tMarks = result.map((e) => e.totalMarks).sum.toInt();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Results'),
      ),
      body: Column(
        children: [
          // we will design circle in the end
          // ignore: avoid_unnecessary_containers
          Container(
            margin: EdgeInsets.all(3),
            height: 20,
            child: CustomPaint(
              foregroundPainter: CircularPainter(
                backgrounColor: kPrimaryColor,
                linerColor: kOtherColor,
                width: 5
              ),
              // child: Center(
              //   child: Text(
              //     oMarks.toString() + '\n / \n' + tMarks.toString(),
              //     textAlign: TextAlign.center,
              //     style: Theme.of(context).textTheme.bodyMedium,
              //   ),
              // ),
            ),
          ),
          Text(
            'You are excellent',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize:20,
              color: Colors.white,
            ),
            ),
             Text(
            'Ali Shah!!',
            style:TextStyle(
              fontSize: 15,
            ),
            ),
            sizedBox,
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: kcustom,
                ),
                child: ListView.builder(
                  padding: EdgeInsets.all(kDefultPadding),
                  itemCount: result.length,
                  itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.only(bottom: kDefultPadding),
                      padding: EdgeInsetsDirectional.all(kDefultPadding/2),
                      decoration: BoxDecoration(
                        color: kTextLightColor,
                        borderRadius: BorderRadius.circular(kDefultPadding),
                        boxShadow: [
                          BoxShadow(
                            color: kTextBlackColor,
                            blurRadius: 2,

                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(result[index].subjectName,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: kTextWhiteColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 15
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('${result[index].botainMarks}/${result[index].totalMarks}',
                                  style: TextStyle(
                                    color: kTextWhiteColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        width: result[index].totalMarks.toDouble(),
                                        height: 2,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[700],
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(kDefultPadding),
                                            bottomRight: Radius.circular(kDefultPadding),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 2,
                                        width: result[index].botainMarks.toDouble(),
                                        decoration: BoxDecoration(
                                          color: result[index].grade == 'D'? kErrorBorderColor:kOtherColor,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(kDefultPadding),
                                            bottomRight: Radius.circular(kDefultPadding),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    result[index].grade,
                                     textAlign: TextAlign.start,
                                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontWeight: FontWeight.w900,

                                    ),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }
                ),
              ),
            ),
        ],
      ),
    );
  }
}
