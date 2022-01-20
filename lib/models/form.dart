// Flutter imports:
import 'package:flutter/material.dart';

class MyForm {
  static final myFormKey = GlobalKey<FormState>();

  static final formValues = <String, String>{
    'first_name': 'Fernando',
    'last_name': 'Herrera',
    'email': 'fernando@google.com',
    'password': '12345',
    'role': 'Admin',
  };
}
