import 'package:flutter/material.dart';

class SubPage extends StatelessWidget {
  final String subTitle;

  const SubPage({Key key, this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$subTitle'),
      ),
    );
  }
}
