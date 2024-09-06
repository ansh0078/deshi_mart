import 'package:desh_mart/configs/AssetsPath.dart';
import 'package:desh_mart/widgets/primaryBtn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              Container(
                width: w / 2,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                      color: Theme.of(context).colorScheme.primaryContainer,
                      child: Column(
                        children: [
                          SvgPicture.asset(IconsAssets.appIcon),
                          SizedBox(height: 40),
                          Row(
                            children: [
                              SvgPicture.asset(InfoIconsAssets.leaf),
                              SizedBox(width: 10),
                              Text("Organic Groceries", style: Theme.of(context).textTheme.bodyMedium)
                            ],
                          ),
                          SizedBox(height: 10),
                          Divider(height: 1, color: Theme.of(context).colorScheme.secondaryContainer),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SvgPicture.asset(InfoIconsAssets.food),
                              SizedBox(width: 10),
                              Text("Whole foods and vegetable", style: Theme.of(context).textTheme.bodyMedium)
                            ],
                          ),
                          SizedBox(height: 10),
                          Divider(height: 1, color: Theme.of(context).colorScheme.secondaryContainer),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SvgPicture.asset(InfoIconsAssets.bus),
                              SizedBox(width: 10),
                              Text("Fast Delivery", style: Theme.of(context).textTheme.bodyMedium)
                            ],
                          ),
                          SizedBox(height: 10),
                          Divider(height: 1, color: Theme.of(context).colorScheme.secondaryContainer),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SvgPicture.asset(InfoIconsAssets.moneybag),
                              SizedBox(width: 10),
                              Text(
                                "East refund and return",
                                style: Theme.of(context).textTheme.bodyMedium,
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Divider(height: 1, color: Theme.of(context).colorScheme.secondaryContainer),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SvgPicture.asset(InfoIconsAssets.secure),
                              SizedBox(width: 10),
                              Text("Secure and safe", style: Theme.of(context).textTheme.bodyMedium)
                            ],
                          ),
                          SizedBox(height: 10),
                          Divider(height: 1, color: Theme.of(context).colorScheme.secondaryContainer),
                        ],
                      ),
                    )),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Welcome To Deshi Mart", style: Theme.of(context).textTheme.headlineMedium)
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Get your grocery in as fast as one hours", style: Theme.of(context).textTheme.labelMedium)
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Email", style: Theme.of(context).textTheme.labelLarge),
                            ],
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter Email",
                              prefixIcon: Icon(
                                Icons.alternate_email,
                                color: Theme.of(context).colorScheme.onPrimaryContainer,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Password", style: Theme.of(context).textTheme.labelLarge),
                            ],
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              prefixIcon: Icon(
                                Icons.lock_open,
                                color: Theme.of(context).colorScheme.onPrimaryContainer,
                              ),
                              suffixIcon: Icon(
                                Icons.remove_red_eye,
                                color: Theme.of(context).colorScheme.onPrimaryContainer,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Forget Password",
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            )
                          ]),
                          const SizedBox(height: 30),
                          PrimaryButton(
                            name: "Login",
                            icon: Icons.lock,
                            onTap: () {},
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                      child: Row(),
                                      height: 2,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                                        borderRadius: BorderRadius.circular(10),
                                      ))),
                              const SizedBox(width: 10),
                              Text("OR", style: Theme.of(context).textTheme.labelMedium),
                              const SizedBox(width: 10),
                              Expanded(
                                  child: Container(
                                      child: Row(),
                                      height: 2,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                                        borderRadius: BorderRadius.circular(10),
                                      ))),
                            ],
                          ),
                          const SizedBox(height: 15),
                          PrimaryButton(
                            name: "Login with google",
                            icon: Icons.lock,
                            onTap: () {},
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    )),
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
