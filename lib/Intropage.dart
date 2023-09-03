import 'package:flutter/material.dart';
import 'package:justpractice/textinput.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final TextEditingController _nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController _religion = TextEditingController();
  final TextEditingController _passCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: const Text(
                        'CREATE YOUR ACCOUNT',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    const Divider(height: 10.0, color: Colors.black),
                    const SizedBox(height: 20.0, width: 30.0),
                    Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/yak.jpg"),
                        radius: 70.0,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    CustomTextInput(
                      controller: _nameController,
                      text: "Full legal name and Middle name",
                      isObscure: false,
                      errorMessage: "Surname comes first",
                    ),
                    SizedBox(height: 20.0),
                    CustomTextInput(
                      controller: _passCode,
                      text: "input your passcode",
                      isObscure: true,
                      errorMessage:
                          "Passcode should not be less than 8 characters ",
                    ),
                    SizedBox(height: 20.0),
                    CustomTextInput(
                      controller: _religion,
                      text: 'input your religion',
                    ),
                    SizedBox(height: 20.0),
                    CustomTextInput(
                        controller: phoneNumber,
                        text: 'input valid phone Number'),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
