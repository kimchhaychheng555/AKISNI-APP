import 'package:akisni_app/app.dart';
import 'package:akisni_app/component/button_component.dart';
import 'package:akisni_app/component/check_box_component.dart';
import 'package:akisni_app/component/input_text_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/screens/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppSpacing.bodyPandding,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Log In',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InputTextComponent(),
              InputTextComponent(),
              CheckBoxComponent(textContent: 'Remember Me'),
              SizedBox(
                height: 10,
              ),
              ButtonComponent(
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeView()),
                  );
                },
                titleButton: 'Log In',
              ),
            ]),
      ),
    );
  }
}