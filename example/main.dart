import 'package:regexed_validator/regexed_validator.dart';

main() {
  print(validator.phone('+(123) - 456-78-90')); // true
  print(validator.name('John Quincy Adams')); // true
  print(validator.postalCode('10010-6543')); // ture
  print(validator.email('example@example.co.uk')); // true
  print(validator.url('http://www.nowhere.com?product=28&color=blue')); // true
  print(validator.currency('£498.10')); // true
  print(validator.ip('67.52.159.38')); // true
  print(validator.date('2000-12-20')); // true
  print(validator.time('14:34 GMT -5')); // true
  print(validator.htmlTags('<strong>Bold</strong>\n'
      '<em>Emphazied</em>\n'
      '<b>Bold</b>\n'
      '<i>Italics</i>\n'
      '<span id="foo" class="bar">Some text</span>\n'
      '<hr />')); // true
  print(validator.password('sword#42Fish')); // true
  print(validator.creditCard('4000-1234-1234-1234')); // true
}
