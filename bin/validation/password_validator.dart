import 'validator.dart';

class PasswordValidator extends Validator {
  PasswordValidator(String text) : super(text);

  @override
  String? validate({int? min, int? max}) {
    if (text.length < min!) {
      return 'password must be at least $min';
    }
    if (text.length > max!) {
      return 'password must be at most $max';
    }
    return null;
  }
}
