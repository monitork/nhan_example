import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final AssetImage image;
  final String text;
  final Function onTap;

  const BigButton(
      {Key key, @required this.image, @required this.text, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 5.0,
              ),
            ],
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [
                  0.1,
                  0.25,
                  0.5,
                  0.75,
                  0.9
                ],
                colors: [
                  Color(0xFFD52D34),
                  Color(0xFFe78670),
                  Color(0xFFEDA38C),
                  Color(0xFFe78670),
                  Color(0xFFD52D34),
                ]),
            border: Border.all(width: 5, color: Colors.yellow),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16),
              child: Image(
                image: image,
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(right: 16),
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .title
                    .copyWith(fontSize: 20, color: Colors.white),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
