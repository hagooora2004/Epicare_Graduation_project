import 'package:epicare/features/splash/presentation/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
// import 'package:epicare/features/splash/presentation/views/splash_view.dart';

class Splashview extends StatelessWidget {
  const Splashview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Splashviewbody(),
    );
  }
}
