import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../validation/email_validator.dart';
import '../validation/name_validator.dart';
import '../validation/password_validator.dart';

void main() {
  group('validation', () {
    test('name validation required ', () {
      final name = '';
      final nameValidation = NameValidator(name).validate();
      expect(nameValidation, 'Name required');
    });

    test('name validation succeed ', () {
      final name = 'osama';
      final nameValidation = NameValidator(name).validate();
      expect(nameValidation, null);
    });

    test('email validation invalid', () {
      final email = '';
      final emailValidation = EmailValidator(email).validate();
      expect(emailValidation, 'Invalid Email');
    });

    test('email validation succeed', () {
      final email = 'osamaashraf1650@gmail.com';
      final emailValidation = EmailValidator(email).validate();
      expect(emailValidation, null);
    });

    test('password validation failed', () {
      final password = '12345';
      final passwordValidation =
          PasswordValidator(password).validate(min: 6, max: 12);
      expect(passwordValidation, 'password must be at least 6');
    });

    test('password validation succeed', () {
      final password = '123456';
      final passwordValidation =
          PasswordValidator(password).validate(min: 6, max: 12);
      expect(passwordValidation, null);
    });
  });
}
