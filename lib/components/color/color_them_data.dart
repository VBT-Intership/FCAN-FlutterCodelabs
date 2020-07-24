import 'package:flutter/material.dart';
import 'package:flutterCodelabs/components/cut_cornes/cut_corners_border.dart';
import 'colors.dart';

final ThemeData kShrineTheme = _buildShrineTheme();
ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: kShrinePurple,
    buttonTheme: base.buttonTheme.copyWith(
        buttonColor: kShrinePurple,
        textTheme: ButtonTextTheme.primary,
        colorScheme: ColorScheme.light().copyWith(primary: kShrinePurple)),
    scaffoldBackgroundColor: kShrineSurfaceWhite,
    textTheme: buildShrineTextTheme(base.textTheme),
    primaryTextTheme: buildShrineTextTheme(base.primaryTextTheme),
    accentTextTheme: buildShrineTextTheme(base.accentTextTheme),
    primaryIconTheme: base.iconTheme.copyWith(color: kShrineSurfaceWhite),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: CutCornersBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: kShrinePurple,
        ),
      ),
      border: CutCornersBorder(),
    ),
  );
}

TextTheme buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline5: base.headline5.copyWith(
          fontWeight: FontWeight.w500,
        ),
        headline6: base.headline6.copyWith(
          fontSize: 18.0,
        ),
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        bodyText1: base.bodyText1.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
      );
}
