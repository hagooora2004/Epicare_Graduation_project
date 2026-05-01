import 'package:flutter/material.dart';
import 'package:epicare/core/widgets/auth_text_field.dart';
import 'package:epicare/core/widgets/custom_button.dart';
import 'package:epicare/core/Constants/assets.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 48),
            const Text(
              'Start Your Journey',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 32),
            const AuthTextField(
              hintText: 'Full name',
              prefixIcon: Icon(Icons.person_outline, color: Color(0xFFB0A9B1)),
            ),
            const SizedBox(height: 24),
            const AuthTextField(
              hintText: 'Email address',
              prefixIcon: Icon(Icons.email_outlined, color: Color(0xFFB0A9B1)),
            ),
            const SizedBox(height: 24),
            const AuthTextField(
              hintText: 'Phone number',
              prefixIcon: Icon(Icons.phone_outlined, color: Color(0xFFB0A9B1)),
            ),
            const SizedBox(height: 24),
            const AuthTextField(
              hintText: 'Password',
              obscureText: true,
              prefixIcon: Icon(Icons.lock_outline, color: Color(0xFFB0A9B1)),
              suffixIcon:
                  Icon(Icons.visibility_outlined, color: Color(0xFFB0A9B1)),
            ),
            const SizedBox(height: 24),
            const AuthTextField(
              hintText: 'Confirm password',
              obscureText: true,
              prefixIcon: Icon(Icons.lock_outline, color: Color(0xFFB0A9B1)),
              suffixIcon:
                  Icon(Icons.visibility_outlined, color: Color(0xFFB0A9B1)),
            ),
            const SizedBox(height: 32),
            CustomButton(
              text: 'Sign up',
              onPressed: () {},
            ),
            const SizedBox(height: 32),
            Center(
              child: RichText(
                text: const TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF1C1C1E),
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign In',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF511659),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 22),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Color(0xFFC7C7CC),
                  ),
                ),
                SizedBox(width: 11),
                Text(
                  "or continue with",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF1C1C1E),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Color(0xFFC7C7CC),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsData.facebook,
                  width: 40,
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
    );
  }
}
