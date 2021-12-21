class Check_balance {
  // ?Donut price
  // static double _narxi = 1.5;
  static double _pinkDonut = 1.5;
  static double _chocoDonut = 4.3;

  // ? Calculate Donut price
  static caculate(int number) {
    num a = num.parse((_pinkDonut * number).toStringAsExponential(2));
    return a;
  }

  static caculate_choco(int number) {
    num a = num.parse((_chocoDonut * number).toStringAsExponential(2));
    return a;
  }
}
