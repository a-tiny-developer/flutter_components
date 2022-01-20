// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../models/models.dart';
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
          child: Form(
            key: MyForm.myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Name',
                  hintText: 'User Name',
                  onChanged: (value) {
                    MyForm.formValues['first_name'] = value;
                  },
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Last name',
                  hintText: 'User Last name',
                  onChanged: (value) {
                    MyForm.formValues['last_name'] = value;
                  },
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Email',
                  hintText: 'User Email',
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    MyForm.formValues['email'] = value;
                  },
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Password',
                  hintText: 'User Password',
                  obscureText: true,
                  onChanged: (value) {
                    MyForm.formValues['password'] = value;
                  },
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'Superuser',
                      child: Text('Superuser'),
                    ),
                    DropdownMenuItem(
                      value: 'Developer',
                      child: Text('Developer'),
                    ),
                    DropdownMenuItem(
                      value: 'Jr. Developer',
                      child: Text('Jr. Developer'),
                    ),
                  ],
                  onChanged: (value) {
                    MyForm.formValues['role'] = value ?? 'Admin';
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // hide keyboard;
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!MyForm.myFormKey.currentState!.validate()) {
                      print('Invalid Form');
                      return;
                    }
                    print(MyForm.formValues);
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
