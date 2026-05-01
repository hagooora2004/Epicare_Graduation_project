import 'package:epicare/core/Constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:epicare/core/widgets/auth_text_field.dart';
import 'package:epicare/core/widgets/custom_button.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(height: 48),
              Center(
                child: Image.asset(
                  AssetsData.signin,
                  width: 211,
                  height: 201,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 32),
              const AuthTextField(
                hintText: 'Email Address',
                prefixIcon: Icon(
                  Icons.person_outline,
                  color: Color(0xFFB0A9B1),
                ),
              ),
              const SizedBox(height: 16),
              const AuthTextField(
                hintText: 'Password',
                obscureText: true,
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Color(0xFFB0A9B1),
                ),
                suffixIcon: Icon(
                  Icons.visibility_outlined,
                  color: Color(0xFFB0A9B1),
                ),
              ),
              // const SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Transform.scale(
                        scale: 0.7,
                        child: Checkbox(
                          value: false,
                          onChanged: (value) {},
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                      const Text(
                        "Remember me",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF4A4A4A),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot password?",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF511659),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: 'Sign in',
                onPressed: () {},
              ),
              const SizedBox(height: 24),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 104,
                    child: Divider(
                      thickness: 1,
                      color: Color(0xFFC7C7CC),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "or login with",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF4A4A4A),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: 104,
                    child: Divider(
                      thickness: 1,
                      color: Color(0xFFC7C7CC),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 26),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AssetsData.facebook,
                    width: 39,
                    height: 39,
                  ),
                  const SizedBox(width: 64),
                  Image.asset(
                    AssetsData.google,
                    width: 33,
                    height: 34,
                  ),
                  const SizedBox(width: 64),
                  Image.asset(
                    AssetsData.apple,
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
