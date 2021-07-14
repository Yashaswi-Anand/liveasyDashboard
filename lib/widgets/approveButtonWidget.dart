import 'package:flutter/material.dart';
import 'package:liveasy_admin/constants/color.dart';
import 'package:liveasy_admin/constants/fontWeight.dart';
import 'package:liveasy_admin/constants/screenSizeConfig.dart';
import 'package:liveasy_admin/constants/space.dart';

// ignore: must_be_immutable
class ApproveButtonWidget extends StatelessWidget {
  ApproveButtonWidget({Key? key, required String type}) : super(key: key);
  double height = SizeConfig.safeBlockVertical!;
  double width = SizeConfig.safeBlockHorizontal!;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            fixedSize: Size(width * 78, height * 26),
            backgroundColor: signInColor,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: signInColor),
                borderRadius: BorderRadius.circular(radius_25))),
        onPressed: () {},
        child: Container(
            height: height * 12,
            width: width * 42,
            child: FittedBox(
                fit: BoxFit.cover,
                child: Text('Approve',
                    style: TextStyle(
                        color: white,
                        fontSize: 10,
                        fontWeight: regularWeight)))));
  }
}