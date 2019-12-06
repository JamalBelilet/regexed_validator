final RegExp _phoneRegex =
    new RegExp(r"^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$");
final RegExp _nameRegex = new RegExp(
    r"^([A-Z][A-Za-z.'\-]+) (?:([A-Z][A-Za-z.'\-]+) )?([A-Z][A-Za-z.'\-]+)$");
final RegExp _postalCodeRegex = new RegExp(r"^\d{5}(-\d{4})?$");
final RegExp _emailRegex = new RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
final RegExp _urlRegex = new RegExp(
    r"^(?:http|https):\/\/[\w\-_]+(?:\.[\w\-_]+)+[\w\-.,@?^=%&:/~\\+#]*$");
final RegExp _currencyRegex =
    new RegExp(r"^(\$|\u00A3|\u00A5|\uFFE5)(\d*\.\d+|\d+)$");
final RegExp _ipRegex = new RegExp(
    r"^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$");
final RegExp _dateRegex =
    new RegExp(r"^\d{4}[-/](0?[1-9]|1[012])[-/](0?[1-9]|[12][0-9]|3[01])$");
final RegExp _timeRegex = new RegExp(
    r"^([0-1]?[0-9]|2[0-3]):[0-5][0-9](:[0-5][0-9])?( ([A-Z]{3}|GMT [-+]([0-9]|1[0-2])))?$");
final RegExp _htmlTagsRegex = new RegExp(
    r"^<(?:([A-Za-z][A-Za-z0-9]*)\b[^>]*>(?:.*?)</\1>|[A-Za-z][A-Za-z0-9]*\b[^/>]*/>)$",
    multiLine: true);
final RegExp _passwordRegex = new RegExp(
    r"^(?=.*\d)(?=.*[~!@#$%^&*()_\-+=|\\{}[\]:;<>?/])(?=.*[A-Z])(?=.*[a-z])\S{8,99}$");
final RegExp _creditCardRegex = new RegExp(
    r"^(?:3[47]\d{2}([\- ]?)\d{6}\1\d{5}|(?:4\d{3}|5[1-5]\d{2}|6011)([\- ]?)\d{4}\2\d{4}\2\d{4})$");

class _Validator {
  const _Validator();
  bool phone(String input) => _phoneRegex.hasMatch(input);
  bool name(String input) => _nameRegex.hasMatch(input);
  bool postalCode(String input) => _postalCodeRegex.hasMatch(input);
  bool email(String input) => _emailRegex.hasMatch(input);
  bool url(String input) => _urlRegex.hasMatch(input);
  bool currency(String input) => _currencyRegex.hasMatch(input);
  bool ip(String input) => _ipRegex.hasMatch(input);
  bool date(String input) => _dateRegex.hasMatch(input);
  bool time(String input) => _timeRegex.hasMatch(input);
  bool htmlTags(String input) => _htmlTagsRegex.hasMatch(input);
  bool password(String input) => _passwordRegex.hasMatch(input);
  bool creditCard(String input) => _creditCardRegex.hasMatch(input);
}

final _Validator validator = const _Validator();
