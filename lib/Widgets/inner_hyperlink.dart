import 'package:anton_1_0/Style/color.dart';
import 'package:anton_1_0/Style/text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InnerHyperlink extends StatelessWidget {
  String innerHyperlinkText;
  final double innerHyperlinkPadding;
  InnerHyperlink(
      {required this.innerHyperlinkText, required this.innerHyperlinkPadding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: innerHyperlinkPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            innerHyperlinkText,
            style: navbarTabletBtnTxt,
          ),
          SizedBox(
            width: 16,
          ),
          Icon(
            Icons.east,
            color: greenColor,
            size: 22,
          ),
        ],
      ),
    );
  }
}
