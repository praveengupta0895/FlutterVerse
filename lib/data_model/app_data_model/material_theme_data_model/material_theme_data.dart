import 'package:widgetgallery/common_libraries.dart';
import 'package:widgetgallery/data_model/app_data_model/material_theme_data_model/material_scheme.dart';

class CustomMaterialThemes {
  ThemeData getMaterialThemeData(ColorScheme colorScheme, Brightness brightness) {
    return ThemeData(
      // Define the overall brightness of the theme
      brightness: brightness,

      // Enable Material 3 design system
      useMaterial3: true,

      // Define the color scheme for the theme
      colorScheme: colorScheme,

      // Define the background color for the scaffold
      scaffoldBackgroundColor: colorScheme.surface,

      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: colorScheme.onPrimary),
        titleTextStyle: TextStyle(color: colorScheme.onPrimary),
      ),

      // TabBar Theme
      tabBarTheme: TabBarTheme(
        labelColor: colorScheme.primary,
        unselectedLabelColor: colorScheme.onSurface,
      ),

      // BottomNavigationBar Theme
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.primary,
        selectedItemColor: colorScheme.onPrimary,
        unselectedItemColor: colorScheme.onSurface,
        showUnselectedLabels: true,
      ),

      // FloatingActionButton Theme
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
      ),

      // Icon Theme
      iconTheme: IconThemeData(color: colorScheme.onSurface),

      // Card Theme
      bottomSheetTheme:
          BottomSheetThemeData(backgroundColor: colorScheme.surface),
      cardTheme: CardTheme(
        color: colorScheme.surface,
      ),

      // Define the color when an input field has focus
      focusColor: colorScheme.primary,

      // Define the color when a pointer is hovering over a widget
      hoverColor: colorScheme.primary.withOpacity(0.04),

      // Define the color when a widget is tapped and held
      splashColor: colorScheme.primary.withOpacity(0.12),

      // Define the color when a widget is being highlighted
      highlightColor: colorScheme.primary.withOpacity(0.16),

      // Dialog Theme
      dialogTheme: DialogTheme(
        backgroundColor: colorScheme.surface,
        titleTextStyle: TextStyle(
          color: colorScheme.onSurface,
        ),
      ),

      // Define the text theme for the theme
      textTheme: _buildTextTheme(colorScheme, brightness)

    );
  }

  TextTheme _buildTextTheme(ColorScheme colorScheme, Brightness brightness) {
    final defaultTextStyle = TextStyle(color: brightness == Brightness.light ? colorScheme.onSurface : colorScheme.onSurface);

    return TextTheme(
      bodySmall: defaultTextStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,

      ),
      bodyMedium: defaultTextStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w700,

      ),
      bodyLarge: defaultTextStyle.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.normal,

      ),
      labelSmall: defaultTextStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,

      ),
      labelMedium: defaultTextStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w700,

      ),
      labelLarge: defaultTextStyle.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.normal,

      ),
      // Define other text styles as needed...
    ).apply(
      bodyColor: brightness == Brightness.light ? colorScheme.onSurface : colorScheme.onSurface,
    );
  }

  /// Doing a little change

  ThemeData get lightThemeOne {
    return getMaterialThemeData(
        MaterialSchemaOne().lightSchema, Brightness.light);
  }

  ThemeData get darkThemeOne {
    return getMaterialThemeData(
        MaterialSchemaOne().darkSchema, Brightness.dark);
  }

  ThemeData get lightThemeTwo {
    return getMaterialThemeData(
        MaterialSchemaTwo().lightSchema, Brightness.light);
  }

  ThemeData get darkThemeTwo {
    return getMaterialThemeData(
        MaterialSchemaTwo().darkSchema, Brightness.dark);
  }

  ThemeData get lightThemeThree {
    return getMaterialThemeData(
        MaterialSchemaThree().lightSchema, Brightness.light);
  }

  ThemeData get darkThemeThree {
    return getMaterialThemeData(
        MaterialSchemaThree().darkSchema, Brightness.dark);
  }

  // ThemeData get lightThemeFour {
  //   return getMaterialThemeData(
  //       MaterialSchemaFour().lightSchema, Brightness.light);
  // }
  //
  // ThemeData get darkThemeFour {
  //   return getMaterialThemeData(
  //       MaterialSchemaFour().darkSchema, Brightness.dark);
  // }

  ThemeData get lightThemeFive {
    return getMaterialThemeData(
        MaterialSchemaFive().lightSchema, Brightness.light);
  }

  ThemeData get darkThemeFive {
    return getMaterialThemeData(
        MaterialSchemaFive().darkSchema, Brightness.dark);
  }


  ///

  List<ThemeData> get materialThemeList{
    return [
      lightThemeOne,
      darkThemeOne,
      lightThemeTwo,
      darkThemeTwo,
      lightThemeThree,
      darkThemeThree,
      // lightThemeFour,
      // darkThemeFour,
      lightThemeFive,
      darkThemeFive
    ];
}
}
