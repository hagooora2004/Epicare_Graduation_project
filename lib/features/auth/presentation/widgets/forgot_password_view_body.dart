import 'package:flutter/material.dart';
import 'package:epicare/core/Constants/assets.dart';
import 'package:epicare/core/widgets/auth_text_field.dart';
import 'package:epicare/core/widgets/custom_button.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 43.5),
            const Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  size: 20,
                ),
                SizedBox(width: 16),
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            const Text(
              'Reset your password',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Please enter your email address to receive a\nverification code.',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF4A4A4A),
                height: 1.2,
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: Image.asset(
                AssetsData.forgotpassword,
                width: 211,
                height: 201,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 40),
            const AuthTextField(
              hintText: 'Email address',
              prefixIcon: Icon(
                Icons.email_outlined,
                color: Color(0xFFB0A9B1),
              ),
            ),
            const SizedBox(height: 40),
            CustomButton(
              text: 'Send',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
