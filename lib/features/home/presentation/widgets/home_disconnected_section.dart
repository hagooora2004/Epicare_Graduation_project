import 'package:flutter/material.dart';
import 'package:epicare/core/Constants/Colors.dart';
import 'package:epicare/core/Constants/assets.dart';

class HomeDisconnectedSection extends StatelessWidget {
  const HomeDisconnectedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 58),

        //circle & icon.
        Container(
          width: 76,
          height: 76,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFE6E6E6),
          ),
          child: Center(
            child: Image.asset(
              AssetsData.watchdis,
              width: 40,
              height: 40,
            ),
          ),
        ),

        const SizedBox(height: 16),

        /// Status
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetsData.status,
              width: 18,
              height: 18,
              color: Colors.black54,
            ),
            const SizedBox(width: 6),
            const Text(
              'Status: Disconnected',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        const SizedBox(height: 32),

        /// Sensor Card
        Container(
          width: 295.72,
          height: 66,
          decoration: BoxDecoration(
            color: const Color(0xFF6F7682),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.08),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SensorIndicator(label: 'ECG'),
              SensorIndicator(label: 'EMG'),
              SensorIndicator(label: 'MOV'),
            ],
          ),
        ),

        const SizedBox(height: 8),

        ///  Tap to connect
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Tap To Connect',
              style: TextStyle(
                fontSize: 16,
                color: kprimarycolor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 8),
            Image.asset(
              AssetsData.refresh,
              width: 16,
              height: 16,
            ),
          ],
        ),
      ],
    );
  }
}

///////////////////////////////////////////////////////////////////
///////////////// Sensor Indicator Widget//////////////////////////
///////////////////////////////////////////////////////////////////
class SensorIndicator extends StatelessWidget {
  final String label;

  const SensorIndicator({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          '--',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
