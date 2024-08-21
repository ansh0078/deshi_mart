import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyDrawerMenu extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final String icon;
  final bool isSelected;
  const MyDrawerMenu({
    super.key,
    required this.onPress,
    required this.title,
    required this.icon,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: isSelected ? Theme.of(context).colorScheme.onBackground : Theme.of(context).colorScheme.onPrimaryContainer,
            ),
      ),
      leading: SvgPicture.asset(
        icon,
        width: 20,
        color: isSelected ? Theme.of(context).colorScheme.onBackground : Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      selected: isSelected,
      selectedTileColor: Colors.green,
      selectedColor: Colors.white,
    );
  }
}
