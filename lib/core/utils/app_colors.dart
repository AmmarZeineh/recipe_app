import 'package:flutter/material.dart';

class AppColors {
  static var neutral = _NeutralColors();
  static var primary = _PrimaryColors();
  static var secondary = _SecondaryColors();
  static var rating = _RatingColors();
  static var error = _ErrorColors();
  static var success = _SuccessColors();
}

class _NeutralColors {
  final Color neutral100 = const Color(0xFF181818);
  final Color neutral90 = const Color(0xFF303030);
  final Color neutral80 = const Color(0xFF484848);
  final Color neutral70 = const Color(0xFF606060);
  final Color neutral60 = const Color(0xFF797979);
  final Color neutral50 = const Color(0xFF919191);
  final Color neutral40 = const Color(0xFFA9A9A9);
  final Color neutral30 = const Color(0xFFC1C1C1);
  final Color neutral20 = const Color(0xFFD9D9D9);
  final Color neutral10 = const Color(0xFFF1F1F1);
  final Color white = const Color(0xFFFFFFFF);
}

class _PrimaryColors {
  final Color primary100 = const Color(0xFF711F1F);
  final Color primary90 = const Color(0xFF882525);
  final Color primary80 = const Color(0xFF9E2B2B);
  final Color primary70 = const Color(0xFFB53232);
  final Color primary60 = const Color(0xFFCB3838);
  final Color primary50 = const Color(0xFFE23E3E);
  final Color primary40 = const Color(0xFFE86565);
  final Color primary30 = const Color(0xFFEE8B8B);
  final Color primary20 = const Color(0xFFF3B2B2);
  final Color primary10 = const Color(0xFFF9D8D8);
  final Color primary0 = const Color(0xFFFCECEC);
}

class _SecondaryColors {
  final Color secondary100 = const Color(0xFF804E00);
  final Color secondary90 = const Color(0xFF995E00);
  final Color secondary80 = const Color(0xFFB36D00);
  final Color secondary70 = const Color(0xFFCC7D00);
  final Color secondary60 = const Color(0xFFE68C00);
  final Color secondary50 = const Color(0xFFFF9C00);
  final Color secondary40 = const Color(0xFFFFA61A);
  final Color secondary30 = const Color(0xFFFFBA4D);
  final Color secondary20 = const Color(0xFFFFCE80);
  final Color secondary10 = const Color(0xFFFFE1B3);
  final Color secondary0 = const Color(0xFFFFF5E6);
}

class _RatingColors {
  final Color rating100 = const Color(0xFFFFB661);
}

class _ErrorColors {
  final Color error100 = const Color(0xFFEE1133);
  final Color error10 = const Color(0xFFFDE7EB);
}

class _SuccessColors {
  final Color success100 = const Color(0xFF31B057);
  final Color success10 = const Color(0xFFCEECD7);
}
