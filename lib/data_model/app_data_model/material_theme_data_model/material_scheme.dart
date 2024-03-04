import 'package:widgetgallery/common_libraries.dart';

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme   toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
      // surfaceTint: surfacv
    );
  }
}

class MaterialSchemaOne {

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff276a49),
      surfaceTint: Color(0xff276a49),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffadf2c7),
      onPrimaryContainer: Color(0xff002111),
      secondary: Color(0xff4e6355),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd0e8d6),
      onSecondaryContainer: Color(0xff0b1f14),
      tertiary: Color(0xff3c6471),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffbfe9f9),
      onTertiaryContainer: Color(0xff001f27),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff6fbf4),
      onBackground: Color(0xff171d19),
      surface: Color(0xfff6fbf4),
      onSurface: Color(0xff171d19),
      surfaceVariant: Color(0xffdce5dc),
      onSurfaceVariant: Color(0xff404942),
      outline: Color(0xff707972),
      outlineVariant: Color(0xffc0c9c0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322d),
      inverseOnSurface: Color(0xffedf2eb),
      inversePrimary: Color(0xff91d5ac),
      primaryFixed: Color(0xffadf2c7),
      onPrimaryFixed: Color(0xff002111),
      primaryFixedDim: Color(0xff91d5ac),
      onPrimaryFixedVariant: Color(0xff045232),
      secondaryFixed: Color(0xffd0e8d6),
      onSecondaryFixed: Color(0xff0b1f14),
      secondaryFixedDim: Color(0xffb5ccbb),
      onSecondaryFixedVariant: Color(0xff374b3e),
      tertiaryFixed: Color(0xffbfe9f9),
      onTertiaryFixed: Color(0xff001f27),
      tertiaryFixedDim: Color(0xffa4cddc),
      onTertiaryFixedVariant: Color(0xff224c59),
      surfaceDim: Color(0xffd6dbd5),
      surfaceBright: Color(0xfff6fbf4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ee),
      surfaceContainer: Color(0xffeaefe9),
      surfaceContainerHigh: Color(0xffe4eae3),
      surfaceContainerHighest: Color(0xffdfe4dd),
    );
  }
  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff91d5ac),
      surfaceTint: Color(0xff91d5ac),
      onPrimary: Color(0xff003921),
      primaryContainer: Color(0xff045232),
      onPrimaryContainer: Color(0xffadf2c7),
      secondary: Color(0xffb5ccbb),
      onSecondary: Color(0xff213529),
      secondaryContainer: Color(0xff374b3e),
      onSecondaryContainer: Color(0xffd0e8d6),
      tertiary: Color(0xffa4cddc),
      onTertiary: Color(0xff043541),
      tertiaryContainer: Color(0xff224c59),
      onTertiaryContainer: Color(0xffbfe9f9),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff0f1511),
      onBackground: Color(0xffdfe4dd),
      surface: Color(0xff0f1511),
      onSurface: Color(0xffdfe4dd),
      surfaceVariant: Color(0xff404942),
      onSurfaceVariant: Color(0xffc0c9c0),
      outline: Color(0xff8a938b),
      outlineVariant: Color(0xff404942),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe4dd),
      inverseOnSurface: Color(0xff2c322d),
      inversePrimary: Color(0xff276a49),
      primaryFixed: Color(0xffadf2c7),
      onPrimaryFixed: Color(0xff002111),
      primaryFixedDim: Color(0xff91d5ac),
      onPrimaryFixedVariant: Color(0xff045232),
      secondaryFixed: Color(0xffd0e8d6),
      onSecondaryFixed: Color(0xff0b1f14),
      secondaryFixedDim: Color(0xffb5ccbb),
      onSecondaryFixedVariant: Color(0xff374b3e),
      tertiaryFixed: Color(0xffbfe9f9),
      onTertiaryFixed: Color(0xff001f27),
      tertiaryFixedDim: Color(0xffa4cddc),
      onTertiaryFixedVariant: Color(0xff224c59),
      surfaceDim: Color(0xff0f1511),
      surfaceBright: Color(0xff353b36),
      surfaceContainerLowest: Color(0xff0a0f0c),
      surfaceContainerLow: Color(0xff171d19),
      surfaceContainer: Color(0xff1b211d),
      surfaceContainerHigh: Color(0xff262b27),
      surfaceContainerHighest: Color(0xff303632),
    );
  }

  ColorScheme get lightSchema{
    return lightScheme().toColorScheme();
}

  ColorScheme get darkSchema{
    return darkScheme().toColorScheme();
  }


}

class MaterialSchemaTwo {

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff904a45),
      surfaceTint: Color(0xff904a45),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdad6),
      onPrimaryContainer: Color(0xff3b0908),
      secondary: Color(0xff775653),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdad6),
      onSecondaryContainer: Color(0xff2c1513),
      tertiary: Color(0xff725b2e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdea6),
      onTertiaryContainer: Color(0xff261900),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfffff8f7),
      onBackground: Color(0xff231918),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff231918),
      surfaceVariant: Color(0xfff5dddb),
      onSurfaceVariant: Color(0xff534342),
      outline: Color(0xff857371),
      outlineVariant: Color(0xffd8c2bf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2d),
      inverseOnSurface: Color(0xffffedeb),
      inversePrimary: Color(0xffffb3ad),
      primaryFixed: Color(0xffffdad6),
      onPrimaryFixed: Color(0xff3b0908),
      primaryFixedDim: Color(0xffffb3ad),
      onPrimaryFixedVariant: Color(0xff73332f),
      secondaryFixed: Color(0xffffdad6),
      onSecondaryFixed: Color(0xff2c1513),
      secondaryFixedDim: Color(0xffe7bdb9),
      onSecondaryFixedVariant: Color(0xff5d3f3d),
      tertiaryFixed: Color(0xffffdea6),
      onTertiaryFixed: Color(0xff261900),
      tertiaryFixedDim: Color(0xffe1c28c),
      onTertiaryFixedVariant: Color(0xff584319),
      surfaceDim: Color(0xffe8d6d4),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ef),
      surfaceContainer: Color(0xfffceae8),
      surfaceContainerHigh: Color(0xfff6e4e2),
      surfaceContainerHighest: Color(0xfff1dedd),
    );
  }



  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb3ad),
      surfaceTint: Color(0xffffb3ad),
      onPrimary: Color(0xff571e1b),
      primaryContainer: Color(0xff73332f),
      onPrimaryContainer: Color(0xffffdad6),
      secondary: Color(0xffe7bdb9),
      onSecondary: Color(0xff442927),
      secondaryContainer: Color(0xff5d3f3d),
      onSecondaryContainer: Color(0xffffdad6),
      tertiary: Color(0xffe1c28c),
      onTertiary: Color(0xff402d04),
      tertiaryContainer: Color(0xff584319),
      onTertiaryContainer: Color(0xffffdea6),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff1a1110),
      onBackground: Color(0xfff1dedd),
      surface: Color(0xff1a1110),
      onSurface: Color(0xfff1dedd),
      surfaceVariant: Color(0xff534342),
      onSurfaceVariant: Color(0xffd8c2bf),
      outline: Color(0xffa08c8a),
      outlineVariant: Color(0xff534342),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dedd),
      inverseOnSurface: Color(0xff392e2d),
      inversePrimary: Color(0xff904a45),
      primaryFixed: Color(0xffffdad6),
      onPrimaryFixed: Color(0xff3b0908),
      primaryFixedDim: Color(0xffffb3ad),
      onPrimaryFixedVariant: Color(0xff73332f),
      secondaryFixed: Color(0xffffdad6),
      onSecondaryFixed: Color(0xff2c1513),
      secondaryFixedDim: Color(0xffe7bdb9),
      onSecondaryFixedVariant: Color(0xff5d3f3d),
      tertiaryFixed: Color(0xffffdea6),
      onTertiaryFixed: Color(0xff261900),
      tertiaryFixedDim: Color(0xffe1c28c),
      onTertiaryFixedVariant: Color(0xff584319),
      surfaceDim: Color(0xff1a1110),
      surfaceBright: Color(0xff423736),
      surfaceContainerLowest: Color(0xff140c0b),
      surfaceContainerLow: Color(0xff231918),
      surfaceContainer: Color(0xff271d1c),
      surfaceContainerHigh: Color(0xff322827),
      surfaceContainerHighest: Color(0xff3d3231),
    );
  }

  ColorScheme get lightSchema{
    return lightScheme().toColorScheme();
  }

  ColorScheme get darkSchema{
    return darkScheme().toColorScheme();
  }

}




class MaterialSchemaThree {
  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4285357583),
      surfaceTint: Color(4285357583),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294500999),
      onPrimaryContainer: Color(4280425216),
      secondary: Color(4284898880),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4293845692),
      onSecondaryContainer: Color(4280359684),
      tertiary: Color(4282607182),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4291161294),
      onTertiaryContainer: Color(4278198543),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294965742),
      onBackground: Color(4280163091),
      surface: Color(4294965742),
      onSurface: Color(4280163091),
      surfaceVariant: Color(4293583568),
      onSurfaceVariant: Color(4283123513),
      outline: Color(4286347111),
      outlineVariant: Color(4291675828),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281544743),
      inverseOnSurface: Color(4294439138),
      inversePrimary: Color(4292593262),
      primaryFixed: Color(4294500999),
      onPrimaryFixed: Color(4280425216),
      primaryFixedDim: Color(4292593262),
      onPrimaryFixedVariant: Color(4283647488),
      secondaryFixed: Color(4293845692),
      onSecondaryFixed: Color(4280359684),
      secondaryFixedDim: Color(4291937953),
      onSecondaryFixedVariant: Color(4283320106),
      tertiaryFixed: Color(4291161294),
      onTertiaryFixed: Color(4278198543),
      tertiaryFixedDim: Color(4289319091),
      onTertiaryFixedVariant: Color(4281093688),
      surfaceDim: Color(4292925900),
      surfaceBright: Color(4294965742),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294636517),
      surfaceContainer: Color(4294241759),
      surfaceContainerHigh: Color(4293847258),
      surfaceContainerHighest: Color(4293452500),
    );
  }



  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4292593262),
      surfaceTint: Color(4292593262),
      onPrimary: Color(4282003456),
      primaryContainer: Color(4283647488),
      onPrimaryContainer: Color(4294500999),
      secondary: Color(4291937953),
      onSecondary: Color(4281741334),
      secondaryContainer: Color(4283320106),
      onSecondaryContainer: Color(4293845692),
      tertiary: Color(4289319091),
      onTertiary: Color(4279514915),
      tertiaryContainer: Color(4281093688),
      onTertiaryContainer: Color(4291161294),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4279571211),
      onBackground: Color(4293452500),
      surface: Color(4279571211),
      onSurface: Color(4293452500),
      surfaceVariant: Color(4283123513),
      onSurfaceVariant: Color(4291675828),
      outline: Color(4288057472),
      outlineVariant: Color(4283123513),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293452500),
      inverseOnSurface: Color(4281544743),
      inversePrimary: Color(4285357583),
      primaryFixed: Color(4294500999),
      onPrimaryFixed: Color(4280425216),
      primaryFixedDim: Color(4292593262),
      onPrimaryFixedVariant: Color(4283647488),
      secondaryFixed: Color(4293845692),
      onSecondaryFixed: Color(4280359684),
      secondaryFixedDim: Color(4291937953),
      onSecondaryFixedVariant: Color(4283320106),
      tertiaryFixed: Color(4291161294),
      onTertiaryFixed: Color(4278198543),
      tertiaryFixedDim: Color(4289319091),
      onTertiaryFixedVariant: Color(4281093688),
      surfaceDim: Color(4279571211),
      surfaceBright: Color(4282136880),
      surfaceContainerLowest: Color(4279242247),
      surfaceContainerLow: Color(4280163091),
      surfaceContainer: Color(4280426519),
      surfaceContainerHigh: Color(4281149985),
      surfaceContainerHighest: Color(4281873707),
    );
  }

  ColorScheme get lightSchema {
    return lightScheme().toColorScheme();
  }

  ColorScheme get darkSchema {
    return darkScheme().toColorScheme();
  }
}

class MaterialSchemaFour {
  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff388e3c), // Green 500
      surfaceTint: Color(0xff388e3c), // Green 500
      onPrimary: Color(0xffffffff), // White
      primaryContainer: Color(0xffc8e6c9), // Green 100
      onPrimaryContainer: Color(0xff000000), // Black
      secondary: Color(0xff2196f3), // Blue 500
      onSecondary: Color(0xffffffff), // White
      secondaryContainer: Color(0xffbbdefb), // Blue 100
      onSecondaryContainer: Color(0xff000000), // Black
      tertiary: Color(0xffffc107), // Amber 500
      onTertiary: Color(0xff000000), // Black
      tertiaryContainer: Color(0xfffff8e1), // Amber 100
      onTertiaryContainer: Color(0xff000000), // Black
      error: Color(0xffff5252), // Red A200
      onError: Color(0xffffffff), // White
      errorContainer: Color(0xffffebee), // Red 50
      onErrorContainer: Color(0xff000000), // Black
      background: Color(0xffffffff), // White
      onBackground: Color(0xff000000), // Black
      surface: Color(0xffffffff), // White
      onSurface: Color(0xff000000), // Black
      surfaceVariant: Color(0xffbdbdbd), // Grey 400
      onSurfaceVariant: Color(0xff000000), // Black
      outline: Color(0xff9e9e9e), // Grey 500
      outlineVariant: Color(0xff000000), // Black
      shadow: Color(0xff000000), // Black
      scrim: Color(0x66000000), // Black with 40% opacity
      inverseSurface: Color(0xff000000), // Black
      inverseOnSurface: Color(0xffffffff), // White
      inversePrimary: Color(0xff388e3c), // Green 500
      primaryFixed: Color(0xffc8e6c9), // Green 100
      onPrimaryFixed: Color(0xff000000), // Black
      primaryFixedDim: Color(0xff388e3c), // Green 500
      onPrimaryFixedVariant: Color(0xff1b5e20), // Green 900
      secondaryFixed: Color(0xffbbdefb), // Blue 100
      onSecondaryFixed: Color(0xff000000), // Black
      secondaryFixedDim: Color(0xff2196f3), // Blue 500
      onSecondaryFixedVariant: Color(0xff0d47a1), // Blue 900
      tertiaryFixed: Color(0xfffff8e1), // Amber 100
      onTertiaryFixed: Color(0xff000000), // Black
      tertiaryFixedDim: Color(0xffffc107), // Amber 500
      onTertiaryFixedVariant: Color(0xffc79100), // Amber 900
      surfaceDim: Color(0xffeeeeee), // Grey 200
      surfaceBright: Color(0xffbdbdbd), // Grey 400
      surfaceContainerLowest: Color(0xffffffff), // White
      surfaceContainerLow: Color(0xfff5f5f5), // Grey 100
      surfaceContainer: Color(0xffe0e0e0), // Grey 300
      surfaceContainerHigh: Color(0xffd3d3d3), // Grey 350
      surfaceContainerHighest: Color(0xffc0c0c0), // Grey 400
    );
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff673ab7), // Deep Purple 500
      surfaceTint: Color(0xff673ab7), // Deep Purple 500
      onPrimary: Color(0xffffffff), // White
      primaryContainer: Color(0xffd1c4e9), // Deep Purple 100
      onPrimaryContainer: Color(0xff000000), // Black
      secondary: Color(0xff00bcd4), // Cyan A400
      onSecondary: Color(0xffffffff), // White
      secondaryContainer: Color(0xffb2ebf2), // Cyan 100
      onSecondaryContainer: Color(0xff000000), // Black
      tertiary: Color(0xffffc107), // Amber 500
      onTertiary: Color(0xff000000), // Black
      tertiaryContainer: Color(0xfffff8e1), // Amber 100
      onTertiaryContainer: Color(0xff000000), // Black
      error: Color(0xffff5252), // Red A200
      onError: Color(0xffffffff), // White
      errorContainer: Color(0xffffebee), // Red 50
      onErrorContainer: Color(0xff000000), // Black
      background: Color(0xff212121), // Grey 900
      onBackground: Color(0xffffffff), // White
      surface: Color(0xff424242), // Grey 800
      onSurface: Color(0xffffffff), // White
      surfaceVariant: Color(0xff757575), // Grey 600
      onSurfaceVariant: Color(0xffffffff), // White
      outline: Color(0xff9e9e9e), // Grey 500
      outlineVariant: Color(0xffffffff), // White
      shadow: Color(0xff000000), // Black
      scrim: Color(0x99000000), // Black with 60% opacity
      inverseSurface: Color(0xffffffff), // White
      inverseOnSurface: Color(0xff000000), // Black
      inversePrimary: Color(0xff673ab7), // Deep Purple 500
      primaryFixed: Color(0xffd1c4e9), // Deep Purple 100
      onPrimaryFixed: Color(0xff000000), // Black
      primaryFixedDim: Color(0xff673ab7), // Deep Purple 500
      onPrimaryFixedVariant: Color(0xff311b92), // Deep Purple 800
      secondaryFixed: Color(0xffb2ebf2), // Cyan 100
      onSecondaryFixed: Color(0xff000000), // Black
      secondaryFixedDim: Color(0xff00bcd4), // Cyan A400
      onSecondaryFixedVariant: Color(0xff00796b), // Teal 800
      tertiaryFixed: Color(0xfffff8e1), // Amber 100
      onTertiaryFixed: Color(0xff000000), // Black
      tertiaryFixedDim: Color(0xffffc107), // Amber 500
      onTertiaryFixedVariant: Color(0xffc79100), // Amber 900
      surfaceDim: Color(0xff424242), // Grey 800
      surfaceBright: Color(0xff757575), // Grey 600
      surfaceContainerLowest: Color(0xff000000), // Black
      surfaceContainerLow: Color(0xff212121), // Grey 900
      surfaceContainer: Color(0xff424242), // Grey 800
      surfaceContainerHigh: Color(0xff616161), // Grey 700
      surfaceContainerHighest: Color(0xff757575), // Grey 600
    );
  }

  ColorScheme get lightSchema {
    return lightScheme().toColorScheme();
  }

  ColorScheme get darkSchema {
    return darkScheme().toColorScheme();
  }
}


class MaterialSchemaFive {

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff755085),
      surfaceTint: Color(0xff755085),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xfff7d8ff),
      onPrimaryContainer: Color(0xff2d0b3d),
      secondary: Color(0xff69596d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfff1dcf4),
      onSecondaryContainer: Color(0xff231728),
      tertiary: Color(0xff815251),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdad8),
      onTertiaryContainer: Color(0xff331111),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfffff7fb),
      onBackground: Color(0xff1e1a1f),
      surface: Color(0xfffff7fb),
      onSurface: Color(0xff1e1a1f),
      surfaceVariant: Color(0xffebdfea),
      onSurfaceVariant: Color(0xff4c444d),
      outline: Color(0xff7d747e),
      outlineVariant: Color(0xffcec3cd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff342f34),
      inverseOnSurface: Color(0xfff8eef5),
      inversePrimary: Color(0xffe4b7f3),
      primaryFixed: Color(0xfff7d8ff),
      onPrimaryFixed: Color(0xff2d0b3d),
      primaryFixedDim: Color(0xffe4b7f3),
      onPrimaryFixedVariant: Color(0xff5c396c),
      secondaryFixed: Color(0xfff1dcf4),
      onSecondaryFixed: Color(0xff231728),
      secondaryFixedDim: Color(0xffd4c0d7),
      onSecondaryFixedVariant: Color(0xff504255),
      tertiaryFixed: Color(0xffffdad8),
      onTertiaryFixed: Color(0xff331111),
      tertiaryFixedDim: Color(0xfff5b7b5),
      onTertiaryFixedVariant: Color(0xff663b3a),
      surfaceDim: Color(0xffe1d7df),
      surfaceBright: Color(0xfffff7fb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffbf1f8),
      surfaceContainer: Color(0xfff5ebf3),
      surfaceContainerHigh: Color(0xffefe5ed),
      surfaceContainerHighest: Color(0xffe9e0e7),
    );
  }



  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffe4b7f3),
      surfaceTint: Color(0xffe4b7f3),
      onPrimary: Color(0xff442253),
      primaryContainer: Color(0xff5c396c),
      onPrimaryContainer: Color(0xfff7d8ff),
      secondary: Color(0xffd4c0d7),
      onSecondary: Color(0xff392c3e),
      secondaryContainer: Color(0xff504255),
      onSecondaryContainer: Color(0xfff1dcf4),
      tertiary: Color(0xfff5b7b5),
      onTertiary: Color(0xff4c2525),
      tertiaryContainer: Color(0xff663b3a),
      onTertiaryContainer: Color(0xffffdad8),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff161217),
      onBackground: Color(0xffe9e0e7),
      surface: Color(0xff161217),
      onSurface: Color(0xffe9e0e7),
      surfaceVariant: Color(0xff4c444d),
      onSurfaceVariant: Color(0xffcec3cd),
      outline: Color(0xff978e97),
      outlineVariant: Color(0xff4c444d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe9e0e7),
      inverseOnSurface: Color(0xff342f34),
      inversePrimary: Color(0xff755085),
      primaryFixed: Color(0xfff7d8ff),
      onPrimaryFixed: Color(0xff2d0b3d),
      primaryFixedDim: Color(0xffe4b7f3),
      onPrimaryFixedVariant: Color(0xff5c396c),
      secondaryFixed: Color(0xfff1dcf4),
      onSecondaryFixed: Color(0xff231728),
      secondaryFixedDim: Color(0xffd4c0d7),
      onSecondaryFixedVariant: Color(0xff504255),
      tertiaryFixed: Color(0xffffdad8),
      onTertiaryFixed: Color(0xff331111),
      tertiaryFixedDim: Color(0xfff5b7b5),
      onTertiaryFixedVariant: Color(0xff663b3a),
      surfaceDim: Color(0xff161217),
      surfaceBright: Color(0xff3d373d),
      surfaceContainerLowest: Color(0xff110d12),
      surfaceContainerLow: Color(0xff1e1a1f),
      surfaceContainer: Color(0xff231e23),
      surfaceContainerHigh: Color(0xff2d282e),
      surfaceContainerHighest: Color(0xff383339),
    );
  }

  ColorScheme get lightSchema{
    return lightScheme().toColorScheme();
  }

  ColorScheme get darkSchema{
    return darkScheme().toColorScheme();
  }

}
