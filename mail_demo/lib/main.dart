import 'dart:core';
import 'package:email_validator/email_validator.dart';

void main() {
    const String email = 'fredrik.eilertsen@hhjj.com';
    final bool isValid = EmailValidator.validate(email);

    print('Email is valid? ' + (isValid ? 'yes' : 'no'));
}
