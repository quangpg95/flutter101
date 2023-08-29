import 'package:flutter/cupertino.dart';

import 'colors.dart';

class KiotVietTextStyle {
  static const String _regularFam = 'InterRegular'; //400
  static const String _mediumFam = 'InterMedium'; //500
  static const String _semiBoldFam = 'InterSemiBold'; //600
  static const String _boldFam = 'InterBold'; //700
  static const String _extraBoldFam = 'InterExtraBold'; //800
  static const String _blackFam = 'InterExtraBold'; //900

  static TextStyle captionRE = const TextStyle(
    fontFamily: _regularFam,
    fontSize: 12,
    color: captionRETextColor,
  );

  static TextStyle bodyMRE = const TextStyle(
    fontFamily: _regularFam,
    fontSize: 14,
    color: regularTextColor,
  );

  static TextStyle bodyL = const TextStyle(
    fontFamily: _regularFam,
    fontSize: 16,
    color: regularTextColor,
  );

  static TextStyle labelM = const TextStyle(
    fontFamily: _mediumFam,
    fontSize: 14,
    color: regularTextColor,
  );

  static TextStyle labelL = const TextStyle(
    fontFamily: _mediumFam,
    fontSize: 16,
    color: regularTextColor,
  );

  static TextStyle titleM = const TextStyle(
    fontFamily: _semiBoldFam,
    fontSize: 14,
    color: defaultTextColor,
  );

  static TextStyle titleL = const TextStyle(
    fontFamily: _semiBoldFam,
    fontSize: 16,
    color: defaultTextColor,
  );

  static TextStyle titleXL = const TextStyle(
    fontFamily: _semiBoldFam,
    fontSize: 18,
    color: defaultTextColor,
  );

  static TextStyle headlineM = const TextStyle(
    fontFamily: _boldFam,
    fontSize: 24,
    color: defaultTextColor,
  );
}
