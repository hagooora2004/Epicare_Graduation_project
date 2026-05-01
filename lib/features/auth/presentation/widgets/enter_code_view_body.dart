import 'package:flutter/material.dart';
import 'package:epicare/core/widgets/custom_button.dart';

class EnterCodeViewBody extends StatelessWidget {
  const EnterCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 48),

            const Text(
              "Enter Code",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 32),

            const Text(
              "Please enter the 4-digit code sent to\n****@gmail.com",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF4A4A4A),
              ),
            ),

            const SizedBox(height: 80),

            /////////////// OTP Boxes /////////////
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
                        color: Color(0xFF511659),
                      ),
                      decoration: InputDecoration(
                        counterText: "",
                        contentPadding: EdgeInsets.zero,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0x66511659),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xFF511659),
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

            /////////Resend/////////////////
            Center(
              child: RichText(
                text: const TextSpan(
                  text: "Didn't receive the code? ",
                  style: TextStyle(
                    color: Color(0xFF1C1C1E),
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: "Resend",
                      style: TextStyle(
                        color: Color(0xFF511659),
                        fontWeight: FontWeight.w500,
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
