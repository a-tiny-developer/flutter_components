import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formValues = <String, String>{
      'first_name': 'Fernando',
      'last_name': 'Herrera',
      'email': 'fernando@google.com',
      'password': '12345',
      'role': 'Admin',
    };

    final myFormKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const CustomInputField(
                  labelText: 'Name',
                  hintText: 'User Name',
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Last name',
                  hintText: 'User Last name',
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Email',
                  hintText: 'User Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Password',
                  hintText: 'User Password',
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Invalid Form');
                      return;
                    }
                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Save'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
