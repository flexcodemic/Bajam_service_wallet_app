import 'package:bajam_app/pages/signin.dart'; 
import 'package:bajam_app/pages/signup.dart';
import 'package:bajam_app/theme.dart';
import 'package:bajam_app/widgets/custom_scafford.dart';
import 'package:bajam_app/widgets/custom_welcome_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScafford(
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 8,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 40.0),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome Back!',
                        style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white),
                      ),
                      TextSpan(
                        text: '\nEnter your personal info to get you started',
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.white,
                          fontFamily: 'Montserrat', //Apply custom font

                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: CustomWelcomeButton(
                      buttonText: 'Sign in',
                      onTap: SignInScreen(),
                      color: Colors.transparent,
                      textColor: AppColors.white,
                    ),
                  ),
                  Expanded(
                    child: CustomWelcomeButton(
                      buttonText: 'Sign up',
                      onTap: SignUpScreen(),
                      color: AppColors.white,
                      textColor: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}