import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ReadQRPage extends StatelessWidget {
  const ReadQRPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            child: InkWell(
              onTap: () {
                debugPrint('camera');
              },
              child: Container(
                padding: EdgeInsets.all(30.0),
                child: Icon(Icons.camera_alt_outlined, size: 50.0)),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                debugPrint('image');
              },
              child: Container(
                padding: EdgeInsets.all(30.0),
                child: Icon(Icons.image_search, size: 50.0)),
            ),
          ),
        ],
      ),
    );
  }
}