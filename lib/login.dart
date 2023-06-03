import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Form(
              child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(height: 90),
            TextFormField(
              onChanged: (value) {
                setState(() {});
              },
              controller: mobileController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  label: const Text("Mobile")),
              maxLength: 10,
            ),
            const SizedBox(height: 10),
            TextFormField(
              onChanged: (value) {
                setState(() {});
              },
              controller: passwordController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  label: const Text("Password")),
            ),
            const SizedBox(height: 25),
            SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      if (mobileController.text.length > 9 &&
                          passwordController.text.isNotEmpty) {}
                    },
                    child: const Text(
                      'Log in',
                      style: TextStyle(fontSize: 22),
                    )))
          ],
        ),
      ))),
    );
  }
}
