import './strength.dart';

String getEmoji(String password) {
  return emoji(estimatePasswordStrength(password));
  
}

String  emoji(double strength){
  if (strength == 0) {
    return "";
  } else if (strength < 0.1) {
    return "😱";
  } else if (strength < 0.3) {
    return "🙁";
  } else if (strength < 0.5) {
    return "🙂";
  } else if (strength < 0.7) {
    return "😀";
  } else if (strength < 0.9) {
    return "😇";
  }
}