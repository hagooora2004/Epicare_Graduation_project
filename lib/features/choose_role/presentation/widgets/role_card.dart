import 'package:flutter/material.dart';
import 'package:epicare/core/Constants/Colors.dart';

class RoleCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const RoleCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 88,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 16,
        bottom: 16,
      ),
      decoration: BoxDecoration(
        color: kprimarycolor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 16,
          )
        ],
      ),
    );
  }
}
