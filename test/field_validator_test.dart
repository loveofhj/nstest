import 'package:test/test.dart';
import 'package:nstest/field_validator.dart';

void main() {
  group('field validator test', () {
    test('validate Social Security Number', () {
      final String socialNumber = "911222-2110332";
      expect(FieldValidator.validateSocialSecurityNumber(socialNumber), true);

      final String socialNumber2 = "761031-1518312";
      expect(FieldValidator.validateSocialSecurityNumber(socialNumber2), true);

      final String socialNumber3 = "983015-1910312";
      expect(FieldValidator.validateSocialSecurityNumber(socialNumber3), false);
    });
  });

  group('field validator test', () {
    test("validateEmail", () {
      const String email1 = "hjpark@nanumspace.com";

      expect(FieldValidator.validateEmail(email1), true); // 통과할거로 예상하고 통과

      const String email2 = "hjpark#@nanumspace.com";

      expect(FieldValidator.validateEmail(email2), true,
          reason:
              '# is a not valid character'); // 통과할 거로 예상했으나 통과하지 못하기에 test fail
    });
  });
}
