import 'package:flutter/material.dart';

class Tools extends StatelessWidget {
  const Tools({
    Key key,
    this.assetPath,
    @required this.technologyName,
  }) : super(key: key);

  final String assetPath;
  final String technologyName;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          assetPath == null ? Container() : Image.asset(assetPath),
          SizedBox(width: 10.0),
          Text(
            technologyName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
