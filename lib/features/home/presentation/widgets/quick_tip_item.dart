import 'package:flutter/material.dart';

class QuickTipItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String source;

  const QuickTipItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.source,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),

      // This row displays the image on the left and the text content on the right
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Tip image
          Image.asset(
            imagePath,
            height: 110,
            width: 116,
            fit: BoxFit.contain,
          ),

          const SizedBox(width: 12),

          // Text content (title, description, source)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                // Tip title
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 6),

                // Tip description
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12,
                    height: 1.4,
                    color: Color(0xff333333),
                  ),
                ),

                const SizedBox(height: 10),

                // Tip source
                Text(
                  source,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
