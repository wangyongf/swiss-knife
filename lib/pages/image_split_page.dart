import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:swiss_knife/util/toast_utils.dart';
import 'package:image_picker/image_picker.dart';

class ImageSplitPage extends StatefulWidget {
  @override
  _ImageSplitPageState createState() => _ImageSplitPageState();
}

class _ImageSplitPageState extends State<ImageSplitPage> {
  bool _isSelectMode = false;
  File _image;
  List<File> _imageList;

  Future _getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }

    setState(() {
      _image = image;
      _imageList = List();
      _imageList.add(image);
      _imageList.add(image);
      _imageList.add(image);
      _imageList.add(image);
      _imageList.add(image);
      _isSelectMode = true;
    });
  }

  @override
  void initState() {
    super.initState();

    _imageList = List();
    _isSelectMode = false;
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
        actions: _getActions(),
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
          child: _isSelectMode ? Icon(Icons.check) : Icon(Icons.image),
          onPressed: _isSelectMode ? _imageSplit : _getImage),
    );
  }

  List<Widget> _getActions() {
    List<Widget> list = List();
    if (!_isSelectMode) {
      list.add(GestureDetector(
        onTap: () {
          ToastUtils.showToast(context, "功能开发中，敬请期待~");
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(Icons.more_vert),
        ),
      ));
    } else {
      list.add(GestureDetector(
        onTap: () {
          ToastUtils.showToast(context, "功能开发中，敬请期待~");
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(Icons.filter_9_plus),
        ),
      ));
      list.add(GestureDetector(
        onTap: () {
          _showClearSelectedTips();
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(Icons.delete),
        ),
      ));
    }

    return list;
  }

  _imageSplit() {
    /// TODO: 图片拼接
    ToastUtils.showToast(context, "图片拼接功能开发中，敬请期待～");
  }

  _buildBody() {
    return Container(
      child: Center(
        child: _getBody(),
      ),
    );
  }

  Widget _getBody() {
    if (!_isSelectMode) {
      return RaisedButton.icon(
          onPressed: _getImage,
          icon: Icon(Icons.cloud_upload),
          label: Text("请先选择图片"));
    }
    return GridView.builder(
        padding: EdgeInsets.all(12),
        itemCount: _imageList?.length ?? 0,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
        ),
        itemBuilder: (BuildContext context, int position) {
          return _buildGridImage(position);
        });
  }

  _buildGridImage(int position) {
    return Stack(
      children: <Widget>[
        Image.file(
          _imageList[position],
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _imageList.removeAt(position);
              });
            },
            child: Container(
              color: Colors.grey,
              width: 30,
              height: 30,
              child: Icon(
                Icons.close,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }

  _showClearSelectedTips() {
    showDialog(
        context: context,
        child: AlertDialog(
          titlePadding: EdgeInsets.only(left: 10, top: 15),
          contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 20),
          title: Text(
            "提示",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          content: Text(
            "您确定要清空列表吗？",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          actions: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "取消",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
                onPressed: () {
                  setState(() {
                    _imageList.clear();
                    _isSelectMode = false;
                  });
                  Navigator.of(context).pop();
                },
                child: Text(
                  "确定",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ));
  }
}
