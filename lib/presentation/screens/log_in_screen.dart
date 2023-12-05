import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:news_app/presentation/components/custom_button.dart';
import 'package:news_app/presentation/screens/sign_up_screen.dart';

import '../components/custom_app_bar.dart';
import '../components/custom_text_form_field.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}
final TextEditingController _logInEmailController = TextEditingController();
final TextEditingController _logInPasswordController = TextEditingController();

bool obscureText = true;

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Log In",
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                "Welcome back again!",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Gap(70),

              CustomTextFormField(
                labelText: "Email",
                hintText: "Email",
                controller: _logInEmailController,
                obscureText: false,
              ),
              CustomTextFormField(
                labelText: "Password",
                hintText: "Password",
                controller: _logInPasswordController,
                obscureText: obscureText,
                icon: IconButton(
                  icon: obscureText
                      ? const Icon(CupertinoIcons.eye_slash)
                      : const Icon(CupertinoIcons.eye),
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                ),
              ),
              CustomButton(
                  text: "Log In",
                  onPressFunction: () {},
                  backgroundColor: Theme.of(context).primaryColor,
                  textColor: Theme.of(context).scaffoldBackgroundColor),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Make an account?",
                    style: TextStyle(color: Theme.of(context).canvasColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()),
                      );},
                    child: const Text(" Sign Up",
                        style: TextStyle(color: Colors.blue)),
                  )
                ],
              ),
              const Gap(26),
              Text(
                "or",
                style: TextStyle(color: Theme.of(context).canvasColor),
              ),
              const Gap(26),
              CustomButton(
                  svgPicture: SvgPicture.asset(
                    'images/icons-google.svg',
                    width: 22,
                  ),
                  text: "Log In With Google",
                  onPressFunction: () {},
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  textColor: Theme.of(context).primaryColor),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
