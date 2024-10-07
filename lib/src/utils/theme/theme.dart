
import 'package:flutter/material.dart';

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff020030),
      surfaceTint: Color(0xff5354af),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff1b1978),
      onPrimaryContainer: Color(0xffaeafff),
      secondary: Color(0xff0f0076),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff322da2),
      onSecondaryContainer: Color(0xffd3d1ff),
      tertiary: Color(0xffad3300),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffff7c51),
      onTertiaryContainer: Color(0xff320800),
      error: Color(0xff7e0007),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffbb191a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcf8ff),
      onSurface: Color(0xff1b1b21),
      onSurfaceVariant: Color(0xff464652),
      outline: Color(0xff777683),
      outlineVariant: Color(0xffc7c5d4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303036),
      inversePrimary: Color(0xffc1c1ff),

    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff020030),
      surfaceTint: Color(0xff5354af),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff1b1978),
      onPrimaryContainer: Color(0xffe1dfff),
      secondary: Color(0xff0f0076),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff322da2),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff7e2200),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffcd4716),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff7e0007),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffbb191a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcf8ff),
      onSurface: Color(0xff1b1b21),
      onSurfaceVariant: Color(0xff42424e),
      outline: Color(0xff5f5e6a),
      outlineVariant: Color(0xff7b7987),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303036),
      inversePrimary: Color(0xffc1c1ff),
      primaryFixed: Color(0xff696bc7),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff5051ac),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6866da),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4f4cbf),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xffcd4716),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xffa93100),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdcd9e1),
      surfaceBright: Color(0xfffcf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f2fb),
      surfaceContainer: Color(0xfff0ecf5),
      surfaceContainerHigh: Color(0xffeae7ef),
      surfaceContainerHighest: Color(0xffe4e1ea),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff020030),
      surfaceTint: Color(0xff5354af),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff1b1978),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff0f0076),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff322da2),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff450f00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff7e2200),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0003),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcf8ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff23232e),
      outline: Color(0xff42424e),
      outlineVariant: Color(0xff42424e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303036),
      inversePrimary: Color(0xffeceaff),
      primaryFixed: Color(0xff363791),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff1e1d7b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff3530a4),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff1c0f8f),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff7e2200),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff571500),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdcd9e1),
      surfaceBright: Color(0xfffcf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f2fb),
      surfaceContainer: Color(0xfff0ecf5),
      surfaceContainerHigh: Color(0xffeae7ef),
      surfaceContainerHighest: Color(0xffe4e1ea),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc1c1ff),
      surfaceTint: Color(0xffc1c1ff),
      onPrimary: Color(0xff23227e),
      primaryContainer: Color(0xff06005d),
      onPrimaryContainer: Color(0xff9799fa),
      secondary: Color(0xffc2c1ff),
      onSecondary: Color(0xff201693),
      secondaryContainer: Color(0xff18088d),
      onSecondaryContainer: Color(0xffafaeff),
      tertiary: Color(0xffffb59e),
      onTertiary: Color(0xff5e1700),
      tertiaryContainer: Color(0xfff46230),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff94000a),
      onErrorContainer: Color(0xffffd8d4),
      surface: Color(0xff131319),
      onSurface: Color(0xffe4e1ea),
      onSurfaceVariant: Color(0xffc7c5d4),
      outline: Color(0xff918f9d),
      outlineVariant: Color(0xff464652),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e1ea),
      inversePrimary: Color(0xff5354af),
      primaryFixed: Color(0xffe1dfff),
      onPrimaryFixed: Color(0xff09006b),
      primaryFixedDim: Color(0xffc1c1ff),
      onPrimaryFixedVariant: Color(0xff3a3b96),
      secondaryFixed: Color(0xffe2dfff),
      onSecondaryFixed: Color(0xff0d006a),
      secondaryFixedDim: Color(0xffc2c1ff),
      onSecondaryFixedVariant: Color(0xff3935a9),
      tertiaryFixed: Color(0xffffdbd0),
      onTertiaryFixed: Color(0xff3a0b00),
      tertiaryFixedDim: Color(0xffffb59e),
      onTertiaryFixedVariant: Color(0xff842500),
      surfaceDim: Color(0xff131319),
      surfaceBright: Color(0xff39383f),
      surfaceContainerLowest: Color(0xff0e0e13),
      surfaceContainerLow: Color(0xff1b1b21),
      surfaceContainer: Color(0xff1f1f25),
      surfaceContainerHigh: Color(0xff2a2930),
      surfaceContainerHighest: Color(0xff35343b),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc6c6ff),
      surfaceTint: Color(0xffc1c1ff),
      onPrimary: Color(0xff06005c),
      primaryContainer: Color(0xff8687e6),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffc7c5ff),
      onSecondary: Color(0xff09005b),
      secondaryContainer: Color(0xff8583f9),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffbba6),
      onTertiary: Color(0xff310800),
      tertiaryContainer: Color(0xfff46230),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff131319),
      onSurface: Color(0xfffdf9ff),
      onSurfaceVariant: Color(0xffcbc9d8),
      outline: Color(0xffa3a1af),
      outlineVariant: Color(0xff83828f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e1ea),
      inversePrimary: Color(0xff3c3c97),
      primaryFixed: Color(0xffe1dfff),
      onPrimaryFixed: Color(0xff04004d),
      primaryFixedDim: Color(0xffc1c1ff),
      onPrimaryFixedVariant: Color(0xff292984),
      secondaryFixed: Color(0xffe2dfff),
      onSecondaryFixed: Color(0xff06004c),
      secondaryFixedDim: Color(0xffc2c1ff),
      onSecondaryFixedVariant: Color(0xff271f98),
      tertiaryFixed: Color(0xffffdbd0),
      onTertiaryFixed: Color(0xff280500),
      tertiaryFixedDim: Color(0xffffb59e),
      onTertiaryFixedVariant: Color(0xff681b00),
      surfaceDim: Color(0xff131319),
      surfaceBright: Color(0xff39383f),
      surfaceContainerLowest: Color(0xff0e0e13),
      surfaceContainerLow: Color(0xff1b1b21),
      surfaceContainer: Color(0xff1f1f25),
      surfaceContainerHigh: Color(0xff2a2930),
      surfaceContainerHighest: Color(0xff35343b),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffdf9ff),
      surfaceTint: Color(0xffc1c1ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffc6c6ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffdf9ff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffc7c5ff),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9f8),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffbba6),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff131319),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffdf9ff),
      outline: Color(0xffcbc9d8),
      outlineVariant: Color(0xffcbc9d8),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e1ea),
      inversePrimary: Color(0xff1b1978),
      primaryFixed: Color(0xffe6e4ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffc6c6ff),
      onPrimaryFixedVariant: Color(0xff06005c),
      secondaryFixed: Color(0xffe7e4ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc7c5ff),
      onSecondaryFixedVariant: Color(0xff09005b),
      tertiaryFixed: Color(0xffffe0d7),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffbba6),
      onTertiaryFixedVariant: Color(0xff310800),
      surfaceDim: Color(0xff131319),
      surfaceBright: Color(0xff39383f),
      surfaceContainerLowest: Color(0xff0e0e13),
      surfaceContainerLow: Color(0xff1b1b21),
      surfaceContainer: Color(0xff1f1f25),
      surfaceContainerHigh: Color(0xff2a2930),
      surfaceContainerHighest: Color(0xff35343b),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
