import 'package:flutter/material.dart';

class VerticalIconView extends StatelessWidget {
  final IconData icon;
  final String text;

  const VerticalIconView({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: 27,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              text,
              style: TextStyle(color: Colors.black45, fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}
