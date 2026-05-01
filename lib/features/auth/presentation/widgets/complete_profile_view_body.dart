import 'package:flutter/material.dart';
import 'package:epicare/core/Constants/Colors.dart';
import 'package:epicare/core/widgets/custom_button.dart';

class CompleteProfileViewBody extends StatelessWidget {
  const CompleteProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Center(
                  child: Container(
                    width: 124,
                    height: 124,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFD9D9D9),
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 80,
                      color: Color(0xFF4A4A4A),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: MediaQuery.of(context).size.width / 2 - 16 - 124 / 2,
                  bottom: 0,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kprimarycolor,
                      border: Border.all(
                        color: const Color(0xFFC49DC9),
                        width: 1,
                      ),
                    ),
                    child: const Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 53),
            const Text(
              'Complete Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Help us personalize your care plan',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF5E585E),
              ),
            ),
            const SizedBox(height: 48),
            const Row(
              children: [
                Expanded(
                  child: GenderButton(
                    icon: Icons.male,
                    text: 'Male',
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: GenderButton(
                    icon: Icons.female,
                    text: 'Female',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Date of birth',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: kprimarycolor3,
                  width: 1,
                ),
              ),
              child: const Row(
                children: [
                  SizedBox(width: 16),
                  Text(
                    'DD / MM / YYYY',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFB0A9B1),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.calendar_month_outlined,
                    color: kprimarycolor,
                    size: 24,
                  ),
                  SizedBox(width: 16),
                ],
              ),
            ),
            const SizedBox(height: 35),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Seizure type',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: kprimarycolor3,
                  width: 1,
                ),
              ),
              child: const Row(
                children: [
                  SizedBox(width: 16),
                  Text(
                    'Seizure type',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFB0A9B1),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Color(0xFFB0A9B1),
                    size: 28,
                  ),
                  SizedBox(width: 16),
                ],
              ),
            ),
            const SizedBox(height: 24),
            CustomButton(
              text: 'Save & Continue',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

///////////////////////////// Gender Button Widget //////////////////////////////
class GenderButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const GenderButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFC7C7CC),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 20,
            color: Colors.black,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
