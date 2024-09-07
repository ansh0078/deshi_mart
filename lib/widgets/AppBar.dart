import 'package:desh_mart/configs/customNotification.dart';
import 'package:desh_mart/provider/authProvider.dart';
import 'package:desh_mart/widgets/ResponsiveLayout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final authProvider = Provider.of<Authprovider>(context);
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          if (!isDesktop)
            IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu)),
          const SizedBox(width: 10),
          if (isDesktop) const Spacer(),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Theme.of(context).colorScheme.background,
                filled: true,
                hintText: "Search here...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.search),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.dark_mode,
            ),
          ),
          const SizedBox(width: 20),
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == "profile") {
                successMessage(context, "Go to profile page");
              } else if (value == 'logout') {
                authProvider.logout(context);
              }
            },
            tooltip: "",
            position: PopupMenuPosition.under,
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem<String>(
                value: 'profile',
                child: Text('Profile Setiing'),
              ),
              PopupMenuItem(
                value: 'logout',
                child: Text('Logout'),
              )
            ],
            child: Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: Text(
                      "A",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Ansh Raj",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
