import 'package:flutter_test/flutter_test.dart';
import 'package:testcode/login_page.dart';

void main() {
  test('empty email returns error string', () {
    final result = EmailFieldValidator.validate('');
    expect(result, 'Email can\'t be empty');
  });
  test('non-empty email returns null', () {
    final result = EmailFieldValidator.validate("emailgmail.com");
    expect(result, 'Email can\'t be invalid');
  });

  test('empty password returns error string', () {
    final result = PasswordFieldValidator.validate('');
    expect(result, 'Password can\'t be empty');
  });

  test('non-empty password returns null', () {
    final result = PasswordFieldValidator.validate('password');
    expect(result, null);
  });
}
