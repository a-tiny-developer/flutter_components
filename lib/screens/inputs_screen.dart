import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              CustomInputField(
                labelText: 'Name',
                hintText: 'User Name',
              ),
              SizedBox(height: 30),
              CustomInputField(
                labelText: 'Last name',
                hintText: 'User Last name',
              ),
              SizedBox(height: 30),
              CustomInputField(
                labelText: 'Email',
                hintText: 'User Email',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 30),
              CustomInputField(
                labelText: 'Password',
                hintText: 'User Password',
                obscureText: true,
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
