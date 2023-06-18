import 'package:flutter/material.dart';
import 'constants.dart';

class DefultButton extends StatelessWidget {
    final VoidCallback onPressed;
    final String title;
    final IconData iconData;

    const DefultButton({required this.onPressed,required this.title,required this.iconData});
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        padding: EdgeInsets.only(right: 20),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kSecondaryColor,kPrimaryColor],
            begin: const FractionalOffset(0.0, 0.0),
            end:  const FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Spacer(),
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            Spacer(),
            Icon(iconData,
            size: 30,
            color: kOtherColor,
            ),
          ],
        ),
      ),
    );
  }
}