import 'package:flutter/material.dart';
import 'package:nhan_example/ui/pages/home/home_widget.dart';
import 'package:nhan_example/ui/pages/sub/sub_page.dart';
import 'package:nhan_example/ui/widgets/button.dart';

class HomePage extends StatelessWidget with HomeWidget {
  @override
  Widget build(BuildContext context) {
    _navigate({String subTitle = 'Math 01'}) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return SubPage(
          subTitle: subTitle,
        );
      }));
    }

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bg.png')),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            textSlogan(context),
            SizedBox(
              height: 16,
            ),
            BigButton(
              image: AssetImage('assets/images/riddle1.png'),
              text: 'Math 01',
              onTap: _navigate,
            ),
            SizedBox(
              height: 16,
            ),
            BigButton(
              image: AssetImage('assets/images/calculator.png'),
              text: 'Math 02',
              onTap: () => _navigate(subTitle: 'Math 02'),
            ),
            SizedBox(
              height: 16,
            ),
            BigButton(
              image: AssetImage('assets/images/spell-check1.png'),
              text: 'English - Vietnamesse',
              onTap: () => _navigate(subTitle: 'English - Vietnamesse'),
            )
          ],
        ),
      ),
    );
  }
}
