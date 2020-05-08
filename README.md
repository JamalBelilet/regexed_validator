Validating:

- phone
- name
- postalCode
- email
- url
- currency
- ip
- date
- time
- htmlTags
- password (strong)
- password (medium)
- creditCard

For Dart/Flutter developers.
[Regexed Validator at pub.dartlang.org](https://pub.dartlang.org/packages/regexed_validator "Regexed Validator")

## Usage

Usage is pretty simple just pass a phone, date, email... to its validation method, see the example below

```dart
import 'package:regexed_validator/regexed_validator.dart';

main() {
  print( validator.email('example@example.co.uk') ); // true

  print(validator.url('http://www.nowhere.com?product=28&color=blue')); // true

  print(validator.currency('£498.10')); // true

  print(validator.ip('67.52.159.38')); // true

  print(validator.time('14:34 GMT -5')); // true

  print( validator.htmlTags('<strong>Bold</strong>\n'
          '<em>Emphazied</em>\n'
          '<b>Bold</b>\n'
          '<i>Italics</i>\n'
          '<span id="foo" class="bar">Some text</span>\n'
          '<hr />')
  ); // true
}
```
