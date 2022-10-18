import 'dart:ui';

import 'package:e_commerce_flutter/core/extansions/extansion.dart';
import 'package:flutter/material.dart';

import '../../core/constants/AppString.dart';
import '../widgets/main_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final AppString appString = AppString();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 46.0, horizontal: 34.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _emailController,
              validator: (val) =>
              val!.isEmpty ?  appString.enterUsernameText : null ,
              decoration: InputDecoration(
                labelText: appString.usernameText,
                hintText: appString.usernameText,
              ),
            ),
            SizedBox(height: context.lowValue),
            TextFormField(
              controller: _emailController,
              validator: (val) =>
                  val!.isValidEmail ? null: appString.enterValidEmail ,
              decoration: InputDecoration(
                labelText: appString.emailText,
                hintText: appString.enterYourMail,
              ),
            ),
            SizedBox(height: context.lowValue),
            TextFormField(
              controller: _passwordController,
              validator: (val) =>
              val!.isValidPassword ? null : appString.enterValidPassword,
              decoration: InputDecoration(
                labelText: appString.passwordText,
                hintText: appString.enterPasswordText,
              ),
            ),
            SizedBox(height: context.lowValue),
            MainButton(
              text: appString.register,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
