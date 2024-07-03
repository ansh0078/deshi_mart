import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeStatic extends StatelessWidget {
  final String label;
  final String value;
  final String icon;
  const HomeStatic({super.key, required this.label, required this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: label == "Total Order"
                  ? Theme.of(context).colorScheme.primary.withOpacity(0.2)
                  : label == "Pending Order"
                      ? const Color(0xffEE0000).withOpacity(0.2)
                      : label == "Processing Order"
                          ? const Color(0xff1400FC).withOpacity(0.2)
                          : Theme.of(context).colorScheme.primary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(100),
            ),
            child: SvgPicture.asset(
              icon,
              width: 25,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                value,
                style: Theme.of(context).textTheme.headlineMedium,
              )
            ],
          )
        ],
      ),
    );
  }
}
