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

## With Flutter TextField, TextFormField and Form(s) 

There is nothing specific to this package when working with Forms and TextFields, see the example below
```dart
TextFormField(
    // The validator receives the text that the user has entered, and use regexed_validator to check if it is a valid string.
    validator: (value) {
      if (!validator.email(value)) {
        return 'Please enter a valid email';
      }
      return null;
    },
  ),
```

Here is a complete example, with a Form and an email field:
```dart
import 'package:flutter/material.dart';
import 'package:regexed_validator/regexed_validator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Validation Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            // The validator receives the text that the user has entered, and use regexed_validator to check if it is a valid string.
            validator: (value) {
              if (!validator.email(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
```
