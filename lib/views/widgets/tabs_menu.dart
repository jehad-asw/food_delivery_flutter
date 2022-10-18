import 'package:flutter/material.dart';

import '../../core/constants/AppString.dart';

class TabsMenu extends StatelessWidget {
  TabsMenu({Key? key}) : super(key: key);
  final AppString appString = AppString();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TabBar(
          tabs: [
            Tab(text: appString.loginText),
            Tab(text: appString.singupText),
          ],
        )
      ],
    );
  }
}
