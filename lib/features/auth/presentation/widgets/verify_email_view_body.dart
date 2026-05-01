import 'package:flutter/material.dart';
import 'package:epicare/core/Constants/Colors.dart';
import 'package:epicare/core/widgets/custom_button.dart';

class VerifyEmailViewBody extends StatelessWidget {
  const VerifyEmailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 48),
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  'Verify Your Email',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Please enter the 4-digit code sent to\n****@gmail.com',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF5E585E),
                height: 1.3,
              ),
            ),
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return Padding(
                  padding: EdgeInsets.only(right: index == 3 ? 0 : 32),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      style: const TextStyle(
                        fontSize: 24,
                        color: kprimarycolor,
                      ),
                      decoration: InputDecoration(
                        counterText: '',
                        contentPadding: EdgeInsets.zero,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0x66511659),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: kprimarycolor,
                            width: 1.2,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 48),
            CustomButton(
              text: 'Verify',
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            Center(
              child: RichText(
                text: const TextSpan(
                  text: "Didn't receive the code? ",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF1C1C1E),
                  ),
                  children: [
                    TextSpan(
                      text: 'Resend',
                      style: TextStyle(
                        color: kprimarycolor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
