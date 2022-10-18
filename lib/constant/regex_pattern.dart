class RegexPatterns {
  static const EmailPattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  static const PasswordPattern =
      "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@\$!%#.*?&])[A-Za-z\\d@\$!%#.*?&]{8,}\$";
}
