import 'package:e_commerce_flutter/core/extansions/extansion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/constants/AppString.dart';
import '../widgets/main_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final AppString appString = AppString();
  final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 46.0, horizontal: 34.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _emailController,
              validator: (val) =>
             val!.isValidEmail ? null : appString.enterValidEmail,
              decoration: InputDecoration(
                labelText: appString.emailText,
                hintText: appString.enterYourMail,
              ),
            ),
            SizedBox(
              height: context.lowValue,
            ),
            TextFormField(
              controller: _passwordController,
              validator: (val) =>
                   val!.isValidPassword ? null : appString.enterValidPassword,
              decoration: InputDecoration(
                labelText: appString.passwordText,
                hintText: appString.enterPasswordText,
              ),
            ),
            SizedBox(
              height: context.lowValue,
            ),
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                child: Text(appString.passwordForgotText),
                onTap: () {},
              ),
            ),
            SizedBox(
              height: context.lowValue,
            ),
            MainButton(
              text: appString.loginText,
              onTap: () {
                if(_formKey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing form data')),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
