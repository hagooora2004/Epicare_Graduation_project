import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/complete_profile_view_body.dart';

class CompleteProfileView extends StatelessWidget {
  const CompleteProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Color(0xFFFBF6FB),
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Color(0xFFFBF6FB),
        body: CompleteProfileViewBody(),
      ),
    );
  }
}
