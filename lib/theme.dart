import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4287646524),
      surfaceTint: Color(4287646524),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294957779),
      onPrimaryContainer: Color(4281993731),
      secondary: Color(4286011215),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294957779),
      onSecondaryContainer: Color(4281079056),
      tertiary: Color(4285422894),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294500518),
      onTertiaryContainer: Color(4280556032),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294965494),
      onBackground: Color(4280490263),
      surface: Color(4294965494),
      onSurface: Color(4280490263),
      surfaceVariant: Color(4294303192),
      onSurfaceVariant: Color(4283646784),
      outline: Color(4286935919),
      outlineVariant: Color(4292395709),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281937452),
      inverseOnSurface: Color(4294962665),
      inversePrimary: Color(4294948004),
      primaryFixed: Color(4294957779),
      onPrimaryFixed: Color(4281993731),
      primaryFixedDim: Color(4294948004),
      onPrimaryFixedVariant: Color(4285740070),
      secondaryFixed: Color(4294957779),
      onSecondaryFixed: Color(4281079056),
      secondaryFixedDim: Color(4293377460),
      onSecondaryFixedVariant: Color(4284301113),
      tertiaryFixed: Color(4294500518),
      onTertiaryFixed: Color(4280556032),
      tertiaryFixedDim: Color(4292593036),
      onTertiaryFixedVariant: Color(4283712793),
      surfaceDim: Color(4293449426),
      surfaceBright: Color(4294965494),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963437),
      surfaceContainer: Color(4294765286),
      surfaceContainerHigh: Color(4294436064),
      surfaceContainerHighest: Color(4294041563),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4285411363),
      surfaceTint: Color(4287646524),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4289355856),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4284038197),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4287589477),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283449621),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4286935874),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      background: Color(4294965494),
      onBackground: Color(4280490263),
      surface: Color(4294965494),
      onSurface: Color(4280490263),
      surfaceVariant: Color(4294303192),
      onSurfaceVariant: Color(4283383612),
      outline: Color(4285291352),
      outlineVariant: Color(4287199091),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281937452),
      inverseOnSurface: Color(4294962665),
      inversePrimary: Color(4294948004),
      primaryFixed: Color(4289355856),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4287449401),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4287589477),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4285879373),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4286935874),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285225516),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293449426),
      surfaceBright: Color(4294965494),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963437),
      surfaceContainer: Color(4294765286),
      surfaceContainerHigh: Color(4294436064),
      surfaceContainerHighest: Color(4294041563),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4282585350),
      surfaceTint: Color(4287646524),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285411363),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281605142),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284038197),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281082112),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283449621),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      background: Color(4294965494),
      onBackground: Color(4280490263),
      surface: Color(4294965494),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4294303192),
      onSurfaceVariant: Color(4281213214),
      outline: Color(4283383612),
      outlineVariant: Color(4283383612),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281937452),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4294961122),
      primaryFixed: Color(4285411363),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283505423),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284038197),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282394144),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283449621),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281871106),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293449426),
      surfaceBright: Color(4294965494),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963437),
      surfaceContainer: Color(4294765286),
      surfaceContainerHigh: Color(4294436064),
      surfaceContainerHighest: Color(4294041563),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294948004),
      surfaceTint: Color(4294948004),
      onPrimary: Color(4283834131),
      primaryContainer: Color(4285740070),
      onPrimaryContainer: Color(4294957779),
      secondary: Color(4293377460),
      onSecondary: Color(4282657316),
      secondaryContainer: Color(4284301113),
      onSecondaryContainer: Color(4294957779),
      tertiary: Color(4292593036),
      onTertiary: Color(4282134276),
      tertiaryContainer: Color(4283712793),
      onTertiaryContainer: Color(4294500518),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4279898383),
      onBackground: Color(4294041563),
      surface: Color(4279898383),
      onSurface: Color(4294041563),
      surfaceVariant: Color(4283646784),
      onSurfaceVariant: Color(4292395709),
      outline: Color(4288711816),
      outlineVariant: Color(4283646784),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294041563),
      inverseOnSurface: Color(4281937452),
      inversePrimary: Color(4287646524),
      primaryFixed: Color(4294957779),
      onPrimaryFixed: Color(4281993731),
      primaryFixedDim: Color(4294948004),
      onPrimaryFixedVariant: Color(4285740070),
      secondaryFixed: Color(4294957779),
      onSecondaryFixed: Color(4281079056),
      secondaryFixedDim: Color(4293377460),
      onSecondaryFixedVariant: Color(4284301113),
      tertiaryFixed: Color(4294500518),
      onTertiaryFixed: Color(4280556032),
      tertiaryFixedDim: Color(4292593036),
      onTertiaryFixedVariant: Color(4283712793),
      surfaceDim: Color(4279898383),
      surfaceBright: Color(4282529588),
      surfaceContainerLowest: Color(4279503882),
      surfaceContainerLow: Color(4280490263),
      surfaceContainer: Color(4280753435),
      surfaceContainerHigh: Color(4281477157),
      surfaceContainerHighest: Color(4282200624),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294949547),
      surfaceTint: Color(4294948004),
      onPrimary: Color(4281533697),
      primaryContainer: Color(4291591274),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293706168),
      onSecondary: Color(4280684555),
      secondaryContainer: Color(4289628288),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4292856208),
      onTertiary: Color(4280161536),
      tertiaryContainer: Color(4288909147),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      background: Color(4279898383),
      onBackground: Color(4294041563),
      surface: Color(4279898383),
      onSurface: Color(4294965752),
      surfaceVariant: Color(4283646784),
      onSurfaceVariant: Color(4292658881),
      outline: Color(4289961626),
      outlineVariant: Color(4287790971),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294041563),
      inverseOnSurface: Color(4281477157),
      inversePrimary: Color(4285805863),
      primaryFixed: Color(4294957779),
      onPrimaryFixed: Color(4280943360),
      primaryFixedDim: Color(4294948004),
      onPrimaryFixedVariant: Color(4284359704),
      secondaryFixed: Color(4294957779),
      onSecondaryFixed: Color(4280290055),
      secondaryFixedDim: Color(4293377460),
      onSecondaryFixedVariant: Color(4283117353),
      tertiaryFixed: Color(4294500518),
      onTertiaryFixed: Color(4279701504),
      tertiaryFixedDim: Color(4292593036),
      onTertiaryFixedVariant: Color(4282529033),
      surfaceDim: Color(4279898383),
      surfaceBright: Color(4282529588),
      surfaceContainerLowest: Color(4279503882),
      surfaceContainerLow: Color(4280490263),
      surfaceContainer: Color(4280753435),
      surfaceContainerHigh: Color(4281477157),
      surfaceContainerHighest: Color(4282200624),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294965752),
      surfaceTint: Color(4294948004),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294949547),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965752),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4293706168),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966006),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4292856208),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4279898383),
      onBackground: Color(4294041563),
      surface: Color(4279898383),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4283646784),
      onSurfaceVariant: Color(4294965752),
      outline: Color(4292658881),
      outlineVariant: Color(4292658881),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294041563),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4283308045),
      primaryFixed: Color(4294959321),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294949547),
      onPrimaryFixedVariant: Color(4281533697),
      secondaryFixed: Color(4294959321),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4293706168),
      onSecondaryFixedVariant: Color(4280684555),
      tertiaryFixed: Color(4294829482),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4292856208),
      onTertiaryFixedVariant: Color(4280161536),
      surfaceDim: Color(4279898383),
      surfaceBright: Color(4282529588),
      surfaceContainerLowest: Color(4279503882),
      surfaceContainerLow: Color(4280490263),
      surfaceContainer: Color(4280753435),
      surfaceContainerHigh: Color(4281477157),
      surfaceContainerHighest: Color(4282200624),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.background,
    canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

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
  ColorScheme toColorScheme() {
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
    );
  }
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
