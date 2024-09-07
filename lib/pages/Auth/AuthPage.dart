import 'package:desh_mart/pages/Auth/widgets/authField.dart';
import 'package:desh_mart/pages/Auth/widgets/authInfo.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: w / 2,
                child: const Row(
                  children: [
                    Expanded(child: AuthInfo()),
                    Expanded(child: AuthField()),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
