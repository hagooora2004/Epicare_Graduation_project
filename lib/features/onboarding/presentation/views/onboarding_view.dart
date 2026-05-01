import 'package:flutter/material.dart';
import 'package:epicare/core/Constants/assets.dart';
import '../widgets/onboarding_one_view_body.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int currentIndex = 0;
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> onboardingData = [
      {
        "image": AssetsData.bracelet,
        "title": "Predict & Protect",
        "description": "Get crucial early warnings\n"
            "When a risk is detected, your smart band\n"
            "glows and vibrates instantly to alert you\n"
            "before a seizure occurs.",
      },
      {
        "image": AssetsData.support,
        "title": "Your Support Circle",
        "description": "Stay connected \n"
            "We notify your caregivers before a\n"
            "seizure starts, and grant your doctor \n"
            "access to your health logs.",
      },
      {
        "image": AssetsData.missDose,
        "title": "Never Miss A Dose",
        "description": "Receive smart reminders for every dose\n"
            " and track your daily progress\n"
            "effortlessly. Your medication list is\n"
            "updated directly by your doctor.",
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFBF6FB),
      body: PageView.builder(
        controller: controller,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemCount: onboardingData.length,
        itemBuilder: (context, index) {
          return OnboardingViewBody(
            image: onboardingData[index]["image"],
            title: onboardingData[index]["title"],
            description: onboardingData[index]["description"],
            currentIndex: currentIndex,
            buttonText:
                index == onboardingData.length - 1 ? 'Get Started' : 'Next',
          );
        },
      ),
    );
  }
}
