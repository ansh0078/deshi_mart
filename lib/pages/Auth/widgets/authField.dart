import 'package:desh_mart/provider/authProvider.dart';
import 'package:desh_mart/widgets/primaryBtn.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthField extends StatelessWidget {
  const AuthField({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    final authProvider = Provider.of<Authprovider>(context, listen: false);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: Form(
        key: _formKey,
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
              controller: email,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email is required";
                } else {
                  return null;
                }
              },
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
              controller: password,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Password is required";
                } else if (value.length < 8) {
                  return "Password must be least 8 characters long";
                }
                return null;
              },
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
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  authProvider.loginWithEmailPwd(email.text, password.text, context);
                }
              },
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
      ),
    );
  }
}
