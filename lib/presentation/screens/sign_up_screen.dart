import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/presentation/components/custom_app_bar.dart';
import 'package:news_app/presentation/components/custom_button.dart';
import 'package:news_app/presentation/components/custom_text_form_field.dart';
import 'package:gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/presentation/controller/auth_controller/auth_event.dart';
import 'package:news_app/presentation/controller/auth_controller/auth_state.dart';
import 'package:news_app/presentation/screens/log_in_screen.dart';
import '../../core/service_locator.dart';
import '../controller/auth_controller/auth_bloc.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) {
          return AuthBloc(sl());
        },
        child: const SignUpScreenContent());
  }
}

class SignUpScreenContent extends StatefulWidget {
  const SignUpScreenContent({Key? key}) : super(key: key);

  @override
  State<SignUpScreenContent> createState() => _SignUpScreenContentState();
}

final TextEditingController _nameController = TextEditingController();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
bool obscureText = true;

class _SignUpScreenContentState extends State<SignUpScreenContent> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
        buildWhen: (previous, current) => previous.state != current.state,
        builder: (BuildContext context, state) {
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
                    const Gap(70),
                    CustomTextFormField(
                      labelText: "Name",
                      hintText: "Name",
                      controller: _nameController,
                      obscureText: false,
                    ),
                    CustomTextFormField(
                      labelText: "Email",
                      hintText: "Email",
                      controller: _emailController,
                      obscureText: false,
                    ),
                    CustomTextFormField(
                      labelText: "Password",
                      hintText: "Password",
                      controller: _passwordController,
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
                        text: "Sign Up",
                        onPressFunction: () {
                          context.read<AuthBloc>().add(
                                SignUpWithEmailEvent(
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                ),
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
                          style:
                              TextStyle(color: Theme.of(context).canvasColor),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LogInScreen()),
                            );
                          },
                          child: const Text(" Log In",
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
                        text: "Sign Up With Google",
                        onPressFunction: () {},
                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        textColor: Theme.of(context).primaryColor),
                    const Gap(20),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
