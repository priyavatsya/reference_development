class FieldValidator {
  static String validateEmail(final String value) {
    if (value.isEmpty) {
      return 'Please enter an email!';
    }

    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
    if (value.isNotEmpty && !emailValid) {
      return 'Please enter a valid email';
    }
    return '';
  }

  static String validatePassword(String value) {
    RegExp regex = RegExp(r'^.{6,}$');
    if (value.isEmpty) {
      return 'Please choose a password';
    }

    if (!regex.hasMatch(value)) {
      return 'Password must contain atleast 6 characters';
    }
    return '';
  }

  static String validateConfirmPassword(String value) {
    // RegExp regex = RegExp(r'^.{6,}$');
    if (value.isEmpty) {
      return 'Please re-enter the password';
    }

    if (validatePassword != validateConfirmPassword) {
      return 'Password did not match';
    }
    return '';
  }
}
