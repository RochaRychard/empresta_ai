import 'package:flutter/material.dart';

// Guia de estilos do EmprestaAi
class TemaEmprestaAi {
  static const corSemente = Color(0xFF00447C);

  static const espacoP = 8;
  static const espacoM = 16;
  static const espacoG = 24;

  static get colorScheme => null;

  static ThemeData claro() => _base(Brightness.light);
  static ThemeData escuro() => _base(Brightness.dark);

  // Função que recebe um brilho e aplica o tema
  static ThemeData _base(Brightness brilho) {
    final cores = colorScheme.fromSeed(
      seedColor: corSemente,
      brightness: brilho,
    );

    return ThemeData(
      colorScheme: cores,
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: Size.fromHeight(52),
          textStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(border: OutlineInputBorder()),

      cardTheme: CardThemeData(margin: EdgeInsets.zero),
    );
  }
}
