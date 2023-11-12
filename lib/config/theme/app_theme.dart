// const Color color = Colors.redAccent;
//0XFF = #, DESPUES EL CODIGO DE TU COLOR HEXADECIMAL
import 'package:flutter/material.dart';

const Color _color = Color(0xFF5800F9);

const List<Color> _coloresThemes = [
  _color,
  Colors.yellow,
  Colors.redAccent,
  Colors.purple,
  Colors.pink,
  Colors.blue,
  Colors.orange,
  Colors.indigo,
];

class AppTheme {

  ThemeData appTheme;

  //con atributo privado
  final int _selectedColor;

  AppTheme({required int selectedColor })
    : assert(
      (selectedColor >= 0 && selectedColor <= _coloresThemes.length - 1),
      'Colors must be between 0 and ${_coloresThemes.length - 1}'
    ), _selectedColor = selectedColor,
      appTheme = ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _coloresThemes[selectedColor],
        brightness: Brightness.light,
    );  

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _coloresThemes[_selectedColor],
      brightness:Brightness.light //es para el theme de color, tipo oscuro o claro
    );
  }
}
