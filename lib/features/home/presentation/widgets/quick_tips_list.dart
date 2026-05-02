import 'package:flutter/material.dart';
import 'quick_tip_item.dart';
import '../../data/quick_tips_data.dart';

class QuickTipsList extends StatelessWidget {
  const QuickTipsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Quick Tips",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 32),

        // Dynamic List
        ...quickTips.map(
          (tip) => QuickTipItem(
            imagePath: tip.imagePath,
            title: tip.title,
            description: tip.description,
            source: tip.source,
          ),
        ),
      ],
    );
  }
}
