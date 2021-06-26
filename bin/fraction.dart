class Fraction {
  final int _numerator;
  final int _denominator;

  Fraction(this._numerator, this._denominator);

  int findGCD(int n, int d) {
    for (var i = n > d ? d : n; i > 0; i--) {
      if (n % i == 0 && d % i == 0) return i;
    }

    return 1;
  }

  String toProper() {
    // check for gcd
    // check if denominator > numerator
    if (_numerator > _denominator) {
      var whole_part = _numerator ~/ _denominator;
      var remainder = _numerator % _denominator;
      var divisor = findGCD(remainder, _denominator);

      return '$whole_part ${remainder ~/ divisor}/${_denominator ~/ divisor}';
    }

    var divisor = findGCD(_numerator, _denominator);
    return '${_numerator ~/ divisor}/${_denominator ~/ divisor}';
  }

  String toImproper() {
    var divisor = findGCD(_numerator, _denominator);
    return '${_numerator ~/ divisor}/${_denominator ~/ divisor}';
  }

  double toDecimal() {
    return _numerator / _denominator;
  }
}
