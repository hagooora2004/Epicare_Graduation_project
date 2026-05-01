import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/enter_code_view_body.dart';

class EnterCodeView extends StatelessWidget {
  const EnterCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Color(0xFFFBF6FB),
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Color(0xFFFBF6FB),
        body: EnterCodeViewBody(),
      ),
    );
  }
}
