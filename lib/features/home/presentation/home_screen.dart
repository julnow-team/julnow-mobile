import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('JulNow')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Rent anything, anytime',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            const Text(
              'Stay · Ride · Gear',
              style: TextStyle(color: AppColors.textMuted),
            ),
            const SizedBox(height: 32),
            FilledButton(
              onPressed: () => context.push('/login'),
              child: const Text('Log in'),
            ),
          ],
        ),
      ),
    );
  }
}