import 'package:flutter/material.dart';
import 'package:epicare/core/Constants/assets.dart';
import 'package:epicare/core/Constants/Colors.dart';

class IntroViewBody extends StatelessWidget {
  const IntroViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 80),
          Center(
              child: Image.asset(
            AssetsData.logo,
            width: 285,
            height: 143,
            fit: BoxFit.contain,
          )),
          const SizedBox(height: 72),
          const Text(
            "Epicare",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: kprimarycolor,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          const Text(
            "Empowering you and your loved ones to live safely with epilepsy",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              height: 1.4,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 112),
          RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                        text: "Please read and agree with our\n",
                        style: TextStyle(color: kprimarycolor7)),
                    TextSpan(
                        text: "Terms Of Use",
                        style: TextStyle(
                          color: kprimarycolor,
                          fontWeight: FontWeight.bold,
                        )),
                    TextSpan(
                        text: "  and  ",
                        style: TextStyle(color: kprimarycolor7)),
                    TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(
                          color: kprimarycolor,
                          fontWeight: FontWeight.bold,
                        )),
                  ])),
          const SizedBox(height: 24),
          SizedBox(
            width: 343,
            height: 56,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF511659),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Agree & Continue',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
