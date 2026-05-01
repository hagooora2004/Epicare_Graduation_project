import 'package:epicare/features/intro/presentation/widgets/intro_view_body.dart';
import 'package:flutter/material.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: IntroViewBody(),
    );
  }
}
