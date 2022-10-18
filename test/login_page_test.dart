import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reference_development/login/login_widgets/fieldValidator.dart';

void main() {
  group('Login', () {
    test('Empty Email Test', () {
      String result = FieldValidator.validateEmail('');
      expect(result, 'Please enter an email!');
    });

    test('Invalid Email Test', () {
      String result = FieldValidator.validateEmail('asdfasdfa');
      expect(result, 'Please enter a valid email');
    });

    test('Valid Email Test', () {
      String result = FieldValidator.validateEmail('ajay.kumar@nonstopio.com');
      expect(result, '');
    });

    test('Empty Password Test', () {
      String result = FieldValidator.validatePassword('');
      expect(result, 'Please choose a password');
    });

    test('Invalid Password Test', () {
      String result = FieldValidator.validatePassword('123');
      expect(result, 'Password must contain atleast 6 characters');
    });

    test('Valid Password Test', () {
      String result = FieldValidator.validatePassword('ajay12345');
      expect(result, '');
    });
  });
}

// void main() {
//   group('validation check', () {
//     test('validate email id', () {
//       final fieldValidator = FieldValidator();
//       var result = fieldValidator.validateEmail('');
//       expect(result, 'Enter Email');
//     });
//
//     // test('validate Password', () {
//     //   final fieldValidator = FieldValidator();
//     //   var result = fieldValidator.validatePassword('234567890467');
//     //   expect(result, '');
//     // });
//   });
// }
