import 'package:anton_1_0/Style/MobileStyles/text_mobile.dart';
import 'package:anton_1_0/Widgets/MobileWidgets/inner_hyperlink.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class WorkCard extends StatelessWidget {
  String imagePath;
  String workcardbody;
  String knowmoreUrl;
  WorkCard(
      {required this.imagePath,
      required this.workcardbody,
      required this.knowmoreUrl});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                imagePath,
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(4)),
            color: Color(0xff010021),
          ),
          padding: EdgeInsets.fromLTRB(16, 32, 16, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                workcardbody,
                style: bodyMobiletxt1,
              ),
              GestureDetector(
                onTap: () async {
                  if (await canLaunch(knowmoreUrl)) {
                    await launch(knowmoreUrl);
                  } else {
                    throw 'Could not launch $knowmoreUrl';
                  }
                },
                child: InnerHyperlink(
                    innerHyperlinkText: 'Read More',
                    innerHyperlinkPadding: 48.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
