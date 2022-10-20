import 'package:e_commerce_flutter/core/extansions/extansion.dart';
import 'package:e_commerce_flutter/views/pages/login_page.dart';
import 'package:e_commerce_flutter/views/pages/register_page.dart';
import 'package:flutter/material.dart';

import '../../core/constants/AppString.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> with TickerProviderStateMixin {
  late TabController _tabController;
  final AppString appString = AppString();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {},
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: context.paddingNormalTop,
                  child: Image(
                      height: MediaQuery.of(context).size.height > 800
                          ? 191.0
                          : 150,
                      fit: BoxFit.fill,
                      image: const AssetImage('img.png')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TabBar(
                    labelColor: Colors.black,
                    indicatorColor: Colors.deepOrangeAccent,
                    tabs: [
                      Tab(text: appString.loginText),
                      Tab(text: appString.singupText)
                    ],
                    controller: _tabController,
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: TabBarView(
                      controller: _tabController,
                      physics: const ClampingScrollPhysics(),
                      children: [
                        ConstrainedBox(
                          constraints: const BoxConstraints.expand(),
                          child: const LoginPage(),
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints.expand(),
                          child: const RegisterPage(),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
