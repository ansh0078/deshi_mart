import 'package:flutter/material.dart';

class OurPage extends StatelessWidget {
  final String title;
  final Widget child;
  const OurPage({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Row(
          children: [
            Container(
              width: 7,
              height: 40,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(height: 30),
        child,
      ],
    ));
  }
}
