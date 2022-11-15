import 'package:flutter_test/flutter_test.dart';
import 'package:reference_development/login/login_widgets/fieldValidator.dart';

void main() {
  group('Register', () {
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

    test('Empty Confirm Password Test', () {
      String result = FieldValidator.validateConfirmPassword('');
      expect(result, 'Please re-enter the password');
    });

    test('Invalid Confirm Password Test', () {
      String result = FieldValidator.validateConfirmPassword('123');
      expect(result, 'Password did not match');
    });

    test('Valid Confirm Password Test', () {
      String result = FieldValidator.validateConfirmPassword('ajay12345');
      expect(result, '');
    });
  });
}
