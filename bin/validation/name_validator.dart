import 'validator.dart';

class NameValidator extends Validator {
  NameValidator(String text) : super(text);

  @override
  String? validate({int? min, int? max}) {
    if (text.isEmpty) {
      return 'Name required';
    }
    return null;
  }
}
