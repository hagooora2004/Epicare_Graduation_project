// import 'package:epicare/features/auth/presentation/views/sign_in_view.dart';
// import 'package:epicare/features/auth/presentation/views/enter_code_view.dart';
// import 'package:epicare/features/auth/presentation/views/reset_password_view.dart';
// import 'package:epicare/features/auth/presentation/views/sign_up_view.dart';
import 'package:epicare/features/home/presentation/views/home_view.dart';
// import 'package:epicare/features/auth/presentation/views/verify_email_view.dart';
// import 'package:epicare/features/choose_role/presentation/views/choose_role_view.dart';
// import 'package:epicare/features/intro/presentation/views/intro_view.dart';
// import 'package:epicare/features/onboarding/presentation/widgets/onboarding_one_view_body.dart';
// import 'package:epicare/features/splash/presentation/views/splash_view.dart';
// import 'package:epicare/features/onboarding/presentation/views/onboarding_view.dart';
// import 'package:epicare/features/welcome/presentation/Views/welcome_view.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const Epicare());
}

class Epicare extends StatelessWidget {
  const Epicare({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
