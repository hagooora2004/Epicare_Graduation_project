import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:epicare/core/Constants/Colors.dart';

class OnboardingViewBody extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final int currentIndex;
  final String buttonText;

  const OnboardingViewBody({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.currentIndex,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xFFFBF6FB),
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 16),

            /// top bar
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios_new, size: 20),
                Text("Skip"),
              ],
            ),

            const SizedBox(height: 56),

            /// image
            Center(
              child: Image(
                image: AssetImage(image),
                width: 263,
                height: 273,
              ),
            ),

            const SizedBox(height: 56),

            /// indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIndicator(0),
                const SizedBox(width: 8),
                _buildIndicator(1),
                const SizedBox(width: 8),
                _buildIndicator(2),
              ],
            ),

            const SizedBox(height: 48),

            /// title
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 12),

            /// description
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                height: 1.4,
              ),
            ),

            const SizedBox(height: 32),

            /// button
            Container(
              width: double.infinity,
              height: 56,
              decoration: BoxDecoration(
                color: kprimarycolor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  buttonText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIndicator(int index) {
    return Container(
      width: 72,
      height: 16,
      decoration: BoxDecoration(
        color: currentIndex == index ? kprimarycolor : kprimarycolor3,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
