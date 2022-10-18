import 'package:e_commerce_flutter/utils/enums.dart';
import 'package:e_commerce_flutter/utils/routes.dart';
import 'package:e_commerce_flutter/views/pages/login_page.dart';
import 'package:e_commerce_flutter/views/pages/register_page.dart';
import 'package:e_commerce_flutter/views/widgets/main_button.dart';
import 'package:e_commerce_flutter/views/widgets/tabs_menu.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> with TickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  var _authType = AuthFormType.login;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
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
                  padding: const EdgeInsets.only(top: 75.0),
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
                    tabs: const [
                      Tab(
                        text: "Login",
                      ),
                      Tab(text: "Sing-up")
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
                          child: LoginPage(),
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints.expand(),
                          child: RegisterPage(),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),

      /*body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 46.0, horizontal: 34.0),
            child: Form(
              key: _formKey,
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 80,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: Colors.white,
                          ),
                          child: Image.asset("img.png"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 64.0,),
                    Row(
                      children: [
                        Container(
                          child: TabBar(controller: _tabController,
                              tabs: const [
                            Tab(text: 'first'),
                            Tab(text: 'second'),
                          ]),
                        ),
                        Container(
                          width: double.maxFinite,
                          height: 300,
                          child: TabBarView(
                              controller: _tabController,
                              children: const [
                            Text('test'),
                            Text('test2')
                          ]),
                        )
                      ],
                    )
                    */ /*Row(
                      children: [
                        Container(
                            child: TabBar(
                          controller: _tabController,
                          tabs: [
                            Tab(
                              text: 'Login',
                            ),
                           */ /* */ /* Tab(
                              text: 'Sing-up',
                            )*/ /* */ /*
                          ],
                        )),
                        Expanded(
                          child: TabBarView(
                              controller: _tabController, children: [
                            //Container(child: LoginPage()),
                            //Container(child: RegisterPage()),
                            Text("test data")
                          ]),
                        )
                      ],
                    ),*/ /*
                  ],
                ),
              ),
            ),
          ),
        ),*/
    );
  }
}

Widget _builderMenuBar(BuildContext context) {
  return Container(
    width: 300.0,
    height: 50.0,
    child: CustomPaint(
      child: Row(),
    ),
  );
}
