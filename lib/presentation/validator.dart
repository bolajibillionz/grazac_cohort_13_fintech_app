class Validator {
  static String? validateEmail(String email) {
    if (email.isEmpty) {
      return 'Required field';
    }
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(email)) {
      return 'invalid email';
    }
  }

  static String? validatePassword(String password) {
    if (password.isEmpty) {
      return 'Required field';
    } else if (password.length < 8) {
      return 'Password should not be less than 8 characters';
    }
  }
}
