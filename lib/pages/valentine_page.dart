import 'package:flutter/material.dart';

class ValentinePage extends StatefulWidget {
  @override
  _ValentinePageState createState() => _ValentinePageState();
}

class _ValentinePageState extends State<ValentinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_back),
          ),
        ),
        title: Text("情侣"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.collections_bookmark),
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Container(
      child: Center(
        child: Text("点进来干啥？你根本就没有对象23333"),
      ),
    );
  }
}
