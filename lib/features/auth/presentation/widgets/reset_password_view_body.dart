import 'package:flutter/material.dart';
import 'package:epicare/core/widgets/auth_text_field.dart';
import 'package:epicare/core/widgets/custom_button.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 51),
            const Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  size: 20,
                ),
                SizedBox(width: 8),
                Text(
                  'Reset Password',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Text(
              'Create new password',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Please enter your new password below',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF4A4A4A),
              ),
            ),
            const SizedBox(height: 40),
            const AuthTextField(
              hintText: 'New password',
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
            const SizedBox(height: 16),
            const AuthTextField(
              hintText: 'Confirm password',
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
            const SizedBox(height: 32),
            CustomButton(
              text: 'Save',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
