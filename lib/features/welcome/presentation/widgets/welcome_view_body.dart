import 'package:flutter/material.dart';
import 'package:epicare/core/Constants/assets.dart';
import 'package:epicare/core/Constants/Colors.dart';
import 'package:epicare/core/widgets/custom_button.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 48),
            const Center(
              child: Image(
                image: AssetImage(AssetsData.welcome),
                width: 263,
                height: 273,
                fit: BoxFit.contain,
              ),
            ),
            const Text(
              "Ready To Start?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "We’re here to help you manage seizures\n"
              " safely.\n"
              "Let’s get started with your personalized \n"
              "care",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: kGreyText,
              ),
            ),
            const SizedBox(height: 24),
            CustomButton(
              text: 'Sign up',
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            CustomButton(
              text: 'Sign in',
              isOutlined: true,
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: kprimarycolor3,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  "Or continue with",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: kGreyText,
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: kprimarycolor3,
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
                const SizedBox(width: 48),
                Image.asset(
                  AssetsData.google,
                  width: 33,
                  height: 34,
                ),
                const SizedBox(width: 48),
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
