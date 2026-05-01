import 'package:epicare/features/choose_role/presentation/widgets/role_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChooseRoleViewBody extends StatelessWidget {
  const ChooseRoleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xFFFBF6FB),
      ),
    );
    return const Scaffold(
      backgroundColor: Color(0xFFFBF6FB),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Icon(
                Icons.arrow_back_ios_new,
                size: 20,
              ),
              SizedBox(height: 48),
              Padding(
                padding: EdgeInsets.only(left: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Who Are You?",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Select a role to personalize your EpiCare\nexperience.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 120),
              RoleCard(
                title: 'Patient',
                subtitle: 'I want to monitor my seizures',
                icon: Icons.person_outline_rounded,
              ),
              SizedBox(height: 32),
              RoleCard(
                title: 'Caregiver',
                subtitle: 'I care for someone with epilepsy',
                icon: Icons.groups_outlined,
              ),
              SizedBox(height: 32),
              RoleCard(
                title: 'Doctor',
                subtitle: 'I manage treatment and patient records',
                icon: Icons.medical_information_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
