import './bruteforce.dart';
import './common.dart';

/// Estimates the strength of a password.
/// Returns a [double] between `0.0` and `1.0`, inclusive.
/// A value of `0.0` means the given [password] is extremely weak,
/// while a value of `1.0` means it is especially strong.
/// 
double estimatePasswordStrength(String password) {
  return estimateBruteforceStrength(password) *
      estimateCommonDictionaryStrength(password);
}

// var score = 0;
// var r_class = 'weak-password';
// //password < 4
// if (password.length < 4 || password.toLowerCase()==username.toLowerCase()) { 
// target.width(score + '%').removeClass("weak-password okay-password good-password strong-password"
// ).addClass(r_class);
//   return true;
// } 
// //password length
// score += password.length * 4;
// score += ( $.updatePasswordMeter._checkRepetition(1,password).length - password.length ) * 1;
// score += ( $.updatePasswordMeter._checkRepetition(2,password).length - password.length ) * 1;
// score += ( $.updatePasswordMeter._checkRepetition(3,password).length - password.length ) * 1;
// score += ( $.updatePasswordMeter._checkRepetition(4,password).length - password.length ) * 1;
// //password has 3 numbers
// if (password.match(/(.*[0-9].*[0-9].*[0-9])/))  score += 5; 

// //password has 2 symbols
// if (password.match(/(.*[!,@,#,$,%,^,&,*,?,_,~].*[!,@,#,$,%,^,&,*,?,_,~])/)) score += 5; 

// //password has Upper and Lower chars
// if (password.match(/([a-z].*[A-Z])|([A-Z].*[a-z])/))  score += 10; 

// //password has number and chars
// if (password.match(/([a-zA-Z])/) && password.match(/([0-9])/))  score += 15; 
// //
// //password has number and symbol
// if (password.match(/([!,@,#,$,%,^,&,*,?,_,~])/) && password.match(/([0-9])/))  score += 15; 

// //password has char and symbol
// if (password.match(/([!,@,#,$,%,^,&,*,?,_,~])/) && password.match(/([a-zA-Z])/))  score += 15; 

// //password is just a nubers or chars
// if (password.match(/^\w+$/) || password.match(/^\d+$/) )  score -= 10; 

// //verifing 0 < score < 100
// score = score * 2;
// if ( score < 0 )  score = 0;
// if ( score > 100 )  score = 100;
// if (score > 25 ) r_class = 'okay-password';
// if (score > 50  ) r_class = 'good-password';
// if (score > 75 ) r_class = 'strong-password';
// target.width(score + '%').removeClass("weak-password okay-password good-password strong-password"
// ).addClass(r_class);
// return true;
// };
