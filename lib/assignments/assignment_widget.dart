import 'package:flutter/material.dart';
import '../seniorScreen/constants.dart';


 class AsssignmentDetailRow extends StatelessWidget {
    final String title;
    final String statusValue;
     AsssignmentDetailRow({required this.title, required this.statusValue});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: kTextLightColor,
              ),
              ),
            Text(
              statusValue,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: kTextBlackColor,
              ),
              ),
          ],
        );
  }
}
class AssignmentButton extends StatelessWidget {
   final String title;
   final VoidCallback onPress;
  AssignmentButton({required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
          child: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [kSecondaryColor,kPrimaryColor],
                begin: const FractionalOffset(0, 0),
                end: const FractionalOffset(0.5, 0),
                stops: [0.1],
                tileMode: TileMode.clamp,
                ),
                borderRadius: BorderRadius.circular(kDefultPadding),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                ),
            ),
          ),
        );
  }
}