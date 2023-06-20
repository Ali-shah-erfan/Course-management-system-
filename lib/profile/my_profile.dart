import 'package:flutter/material.dart';
import '../seniorScreen/constants.dart';


class MyProfileScreen extends StatelessWidget {
  static String routeName = 'MyProfileScreen';
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
           title: Center(child: Text('My Profile',style:TextStyle(fontWeight:FontWeight.w600))),
         actions: [
           InkWell(
             onTap: (){
              // send Report to school Manager
             },
             child: Container(
                 padding: EdgeInsets.only(right: kDefultPadding/2),
               child: Row(
                 children: [
                  
                   Icon(Icons.report_gmailerrorred_outlined),
                   kWidthSizedBox,
                   Text(
                    'Report',
                    style: TextStyle(
                      fontSize: 20,
                      ),
                      ),
                ],
              ), 
             ),
           ),
        ],
       ),
       body: Container(
        color: kOtherColor,
         child: Column(
          children: [
            Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(kDefultPadding * 2),
                bottomRight: Radius.circular(kDefultPadding * 2),
                  ),
                ),
           child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
             CircleAvatar(
                maxRadius: 50,
                minRadius: 50,
                backgroundColor: kSecondaryColor,
                backgroundImage: AssetImage('images/Ali.jpg'),
                  ),
                  kWidthSizedBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ' Ali Shah',
                        style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      Text(
                        '  class X - II | Roll no: 12',
                        style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            sizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(
                    title: 'Register Number', 
                    value: '2023-ASDF-2024'
                ),
                ProfileDetailRow(
                    title: 'Academic Year', 
                    value: '2023 - 2024'
                ),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(
                    title: 'Admission Class', 
                    value: 'X-II'
                ),
                ProfileDetailRow(
                    title: 'Admission Number', 
                    value: '000126'
                ),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(
                    title: 'Date of Admission', 
                    value: '17 june 2023'
                ),
                ProfileDetailRow(
                    title: 'Date of Birth', 
                    value: '3 may 1999'
                ),
              ],
            ),
       
             ProfileDetailColumn(title: 'Email', value: 'ira87350@gmail.com'),
             ProfileDetailColumn(title: 'Last Name', value: 'Erfan'),
             ProfileDetailColumn(title: 'F/Name', value: 'Ali shir'),
             ProfileDetailColumn(title: 'Phone Number', value: '0972242085'),
  
          ],
         ),
       ),
    );
  }
}

class ProfileDetailRow extends StatelessWidget {
  final String title;
  final String value;
   ProfileDetailRow({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
               padding: EdgeInsets.only(
                  right: kDefultPadding/4,
                  left: kDefultPadding/4,
                  top: kDefultPadding/2,
                ),
              width: MediaQuery.of(context).size.width/2,
              color: kcustom,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(
                    title,
                    style: TextStyle(
                      color: kTextWhiteColor,
                      fontSize: 15,
                    ),
                    ),
                  kHalfSizeBox,
                  Text(
                    value,
                    style: TextStyle(
                      color: kTextBlackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                    ),
                    
                    kHalfSizeBox,
                    SizedBox(
                      width: MediaQuery.of(context).size.width/3,
                      child: Divider(
                        thickness: 1.0,
                      ),
                    ),
                    ],
                  ),
              Icon(Icons.lock_outline, size: 20,),
                ],
            ),
        );
  }
}

class ProfileDetailColumn extends StatelessWidget {
  final String title;
  final String value;
  const ProfileDetailColumn({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: kTextLightColor,
                        fontSize: 15,
                      ),
                      ),
                      kHalfSizeBox,
                      Text(
                      value,
                      style: TextStyle(
                        color: kTextBlackColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                      kHalfSizeBox,
                      SizedBox(
                        width: MediaQuery.of(context).size.width/1.1,
                        child: Divider(
                          thickness: 1.0,
                        ),
                      ),
                  ],
                ),
                  Icon(Icons.lock_outline,size: 20,),
              ],
            ),
            );
  }
}