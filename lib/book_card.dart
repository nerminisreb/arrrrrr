import 'package:ebook/consttants.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  BookCard(
      {Key? key, this.image, this.title, this.subtitle, this.rating, this.show})
      : super(key: key);

  String? image;
  String? title;
  String? subtitle;
  String? rating;
  Function? show;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      height: 200,
      width: 200,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            bottom: 420,
            child: Container(
              height: 240,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 33,
                    color: kShadowColor.withOpacity(.84),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            width: 110,
            height: 130,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 33,
                  color: kShadowColor.withOpacity(.50),
                ),
              ],
              borderRadius: BorderRadius.circular(35),
              image: DecorationImage(
                image: ExactAssetImage("$image"),
              ),
            ),
          ),
          Positioned(
            bottom: 95,
            right: 5,
            child: Column(),
          ),
          Positioned(
            top: 140,
            child: Container(
              padding: EdgeInsets.only(left: 8),
              alignment: AlignmentDirectional.topStart,
              height: 85,
              width: 202,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                  ),
                  Text(
                    "$title",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: Container(
                      padding: EdgeInsets.only(top: 5),
                    ),
                  ),
                  Text(
                    "$subtitle",
                    style: TextStyle(
                      fontSize: 10,
                      color: kLightBlackColor,
                    ),
                  ),
                  GestureDetector(
                    child: InkWell(
                      hoverColor: kBlackColor,
                      onTap: () {
                        show!();
                      },
                      child: Container(
                        width: 100,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.bottomLeft,
                        child: Text(" Details"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
