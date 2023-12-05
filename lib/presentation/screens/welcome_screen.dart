import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:news_app/presentation/screens/sign_up_screen.dart';

import '../components/custom_app_bar.dart';
import '../components/custom_button.dart';
import 'log_in_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Sign Up",
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                "Let's get started with your 30 days free trial",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Gap(60),
              CustomButton(
                  svgPicture: SvgPicture.asset(
                    'images/icons-google.svg',
                    width: 22,
                  ),
                  text: "Sign Up With Google",
                  onPressFunction: () {},
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  textColor: Theme.of(context).primaryColor),
              const Gap(20),
              CustomButton(
                  svgPicture: SvgPicture.asset(
                    'images/email.svg',
                    color: Colors.white,
                    width: 22,
                  ),
                  text: "Sign Up With Email",
                  onPressFunction: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>SignUpScreen()),
                    );
                  },
                  backgroundColor: Theme.of(context).primaryColor,
                  textColor: Theme.of(context).scaffoldBackgroundColor),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: Theme.of(context).canvasColor),
                  ),
                  GestureDetector(
                    onTap: () { Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LogInScreen()),
                    );},
                    child: const Text(" Log In",
                        style: TextStyle(color: Colors.blue)),
                  )
                ],
              ),
              const Gap(26),
            ],
          ),
        ),
      ),
    );
  }
}
