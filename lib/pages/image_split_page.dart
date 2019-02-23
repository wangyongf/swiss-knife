import 'dart:io';

import 'package:flutter/material.dart';
import 'package:swiss_knife/util/toast_utils.dart';
import 'package:image_picker/image_picker.dart';

class ImageSplitPage extends StatefulWidget {
  @override
  _ImageSplitPageState createState() => _ImageSplitPageState();
}

class _ImageSplitPageState extends State<ImageSplitPage> {
  File _image;

  Future _getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.arrow_back),
          ),
        ),
        title: Text("图片拼接"),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              ToastUtils.showToast(context, "功能开发中，敬请期待~");
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
      body: _buildBody(),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.image), onPressed: _getImage),
    );
  }

  _buildBody() {
    return Container(
      child: Center(
        child: _getBody(),
      ),
    );
  }

  Widget _getBody() {
    if (_image == null) {
      return RaisedButton.icon(
          onPressed: () {
            ToastUtils.showToast(context, "功能开发中，敬请期待～");
          },
          icon: Icon(Icons.cloud_upload),
          label: Text("请先选择图片"));
    }
    return Image.file(_image);
  }
}
