import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors._();

  static const Color black = Color(0xFF000000);
  static const Color accentColor = Colors.white;
  static const Color green = Color(0xFF15BE77);
  static const Color unselectedText = Color(0xFFBDBDBD);
  static const Color freePlaceGrid = Color(0xFFE8F9F2);
  static const Color pink = Color(0xFFFFE0E0);
  static const Color yellow = Color(0xFFFFFBD7);
  static const Color darkRed = Color(0xFFBE1515);
  static const Color orange = Color(0xFFBE7A15);
  static const Color textColor1 =  Color(0xff6BDAA5);
  static const Color hintColor =  Color(0xff3B3B3B);
  static const Color buttonColor =  Color(0xff15BE77);
  static const Color borderColor =  Color(0xff9FEDC2);
  static const Color backButtonColor =  Color(0xffD1FFE2);
  static const Color messageButtonBg =  Color(0xffE8F9F2);
  static const Color basketBgColor =  Color(0xffFBFBFB);
  static const Color dottedColor =  Color(0xffF0F1FF);
  static const Color darkYellow =  Color(0xffFFE175);
  static const Color red =  Color(0xffF63C3C);
  static const Color indicatorColor =  Color(0xff4FEDA5);
  static const Color inActiveColor =  Color(0xffA1F8CF);

  static  Color shadowColor2 = const  Color(0xff5A6CEA).withOpacity(.1);
  static  Color shadowColor3 = const  Color(0xff5A6CEA).withOpacity(.07);
  static  Color shadowColor = const Color(0xff5AEAB6).withOpacity(.2);
  
  

  static List<Color> cartGrColors = [
    const Color(0xff383E4F),
    const Color(0xff383D4D),
    const Color(0xff5A6278),
    const Color(0xff1A1E2A),
  ];
  static List<Color> filterColors = [
    const Color(0xffF7CD67),
    const Color(0xff8ACD95),
    const Color(0xffCEA9F9),
    const Color(0xffFBA173),
    const Color(0xff9E6CC3),
    const Color(0xffFEF8B3),
    const Color(0xffB4B4B4),
  ];

  static Gradients gradients = const Gradients();

  static getPrimaryColor(int num) => Color(int.parse('0x${num}00845A'));

  static PrimaryColor primaryLight = const PrimaryColor(
    0xFF00845A,
    <int, Color>{
      100: Color(0xFF00845A),
      50: Color(0xFFF2FDF5),
    },
  );

  static BaseColor baseLight = BaseColor(
    0xFF16A249,
    <int, Color>{
      100: Colors.white,
      50: const Color(0xFFF4F4F4),
      80: Colors.white.withOpacity(.8),
      40: Colors.white.withOpacity(.4),
      20: Colors.white.withOpacity(.2),
      60: Colors.white.withOpacity(.6),
    },
  );

  static TextColor textColor = TextColor();
}

class BaseColor extends ColorSwatch<int> {
  const BaseColor(super.primary, super.swatch);

  Color get shade100 => this[100]!;

  Color get shade50 => this[50]!;

  Color get shade40 => this[40]!;

  Color get shade80 => this[80]!;

  Color get shade20 => this[20]!;

  Color get shade60 => this[60]!;
}

class PrimaryColor extends ColorSwatch<int> {
  const PrimaryColor(super.primary, super.swatch);

  Color get shade100 => this[100]!;

  Color get shade50 => this[50]!;
}

class TextColor extends ColorSwatch<int> {
  TextColor()
      : super(
          0xFF332f2e,
          <int, Color>{
            1: const Color(0xFFFFFFFF),
            2: const Color(0xFF4C4C4F),
            3: const Color(0xffe8e8e8),
            4: const Color(0xffCAF99C),
            26: Colors.black26,
            5: const Color(0xffF58965),
            6: const Color(0xff9D9898),
            7: const Color(0xff1D1D1D).withOpacity(.6),
          },
        );

  Color get shade1 => this[1]!;
  Color get shade2 => this[2]!;
  Color get shade3 => this[3]!;
  Color get shade4 => this[4]!;
  Color get shade26 => this[26]!;
  Color get shade5 => this[5]!;
  Color get shade6 => this[6]!;
  Color get shade7 => this[7]!;
}

class Gradients {
  const Gradients();

  LinearGradient get detailsGradient => LinearGradient(
        begin: Alignment.topRight,
        colors: [
          const Color(0xFF000000).withOpacity(.8),
          const Color(0xFF1A1A1A).withOpacity(.614),
        ],
      );

  LinearGradient get welcome => LinearGradient(colors: [
        const Color(0xFF000000).withOpacity(0),
        const Color(0xFF000000),
      ], begin: Alignment.topRight);

  LinearGradient get tabbarGr => LinearGradient(colors: [
        const Color(0xFFFFFFFF).withOpacity(.2),
        const Color(0xFFFFFFFF).withOpacity(.2),
      ], begin: Alignment.topRight);

  LinearGradient get trendingGr => LinearGradient(colors: [
        const Color(0xFF7264FF).withOpacity(.7),
        const Color(0xFF7264FF),
      ], begin: Alignment.bottomRight);
}
