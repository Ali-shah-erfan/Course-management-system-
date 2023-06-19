import 'package:flutter/material.dart';

import '../seniorScreen/constants.dart';


class FeeButton extends StatelessWidget {
  final String title;
  final IconData icondate;
  final VoidCallback onPress;
   FeeButton({required this.title, required this.icondate, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
         onTap: onPress,
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors : [kSecondaryColor,kPrimaryColor],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.5, 0.0),
                  stops: [0.0, 0.1],
                  tileMode: TileMode.clamp,
                  
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    ),
                    Icon(icondate,color: kOtherColor,size: 30),
                ],
              ),
            ),
          );
  }
}

class FeeDatRow extends StatelessWidget {
  final String title;
  final String statusValue;
  const FeeDatRow({required this.title, required this.statusValue});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: kTextLightColor,
          ),
          ),
          Text(
            statusValue,
            style: TextStyle(
              fontSize: 14,
              color: kTextBlackColor,
              fontWeight: FontWeight.w600
          ),
          ),
          ],
      );
  }
}