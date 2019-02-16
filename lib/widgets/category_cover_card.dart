import 'package:flutter/material.dart';

class CategoryCoverCard extends StatelessWidget {
  final String assetBg;
  final String title;
  final String subTitle;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  const CategoryCoverCard(
      {Key key,
      this.assetBg,
      this.title,
      this.subTitle,
      this.padding,
      this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
          height: 130,
          padding: padding,
          margin: margin,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage(assetBg),
                  fit: BoxFit.cover)),
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 10,
                bottom: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      subTitle,
                      style: TextStyle(fontSize: 9, color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
