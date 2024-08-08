import 'package:flutter/material.dart';
import 'package:k_login/appBar.dart';
import 'package:k_login/button.dart';
import 'package:k_login/widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isSecure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: bar,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                InputField(
                  controller: _email,
                  obsecure: false,
                  lable: "E-mail",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Email';
                    }
                    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                InputField(
                  controller: _pass,
                  obsecure: isSecure,
                  lable: "Password",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters long';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                SubmitButton(onTap: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Entered Details are valid ")));
                  } else {
                    print('Form is invalid');
                  }
                })
              ],
            ),
          ),
        ));
  }
}
