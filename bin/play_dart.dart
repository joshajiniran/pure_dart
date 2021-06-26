import 'dart:io';
import 'fraction.dart';

void main() {
  print('Enter the numerator: ');
  var numerator = stdin.readLineSync();
  print('Enter the denominator: ');
  var denominator = stdin.readLineSync();

  var fraction =
      Fraction(int.tryParse(numerator!)!, int.tryParse(denominator!)!);

  print(fraction.toProper());
  print(fraction.toImproper());
  print(fraction.toDecimal());
}
