import 'dart:math';

double estimateBruteforceStrength(String password) {
  if (password.isEmpty) return 0.0;
  double score;
  if (RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{7,})")
      .hasMatch(password)) {
    score = 1.8;
  } else if (RegExp(
          "^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{5,})")
      .hasMatch(password)) {
    score = 1.7;
  } else if (RegExp(r"^[A-Za-z0-9|!\#$%&'()*+,-./:;<=>?@[\]^_`{|}~]+$")
      .hasMatch(password)) {
    score = 1.5;
  } else if (RegExp(
          r'^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[0-9])(?=.*[a-z]))|((?=.*[0-9])(?=.*[A-Z])))(?=.{4,})')
      .hasMatch(password)) {
    score = 1.4;
  } else if (RegExp(r'^[a-zA-Z]+$').hasMatch(password)) {
    score = 1.2;
  } else if (RegExp(r'^([a-z]+|[A-Z]+)$').hasMatch(password)) {
    score = 1.0;
  }
  else{
    score = 1.8;
  }
  final logisticFunction = (double x) {
    return 1.0 / (1.0 + exp(-x));
  };

  final curve = (double x) {
    return logisticFunction((x / 3.0) - 4.0);
  };

  return curve(password.length * score);
}
