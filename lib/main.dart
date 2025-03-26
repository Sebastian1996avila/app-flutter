import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants/app_routes.dart';
import 'package:flutter_app/login_page.dart';
import 'package:flutter_app/register_page.dart';
import 'package:flutter_app/forgot_password_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gestión App',
      theme: _buildTheme(Brightness.light),
      darkTheme: _buildTheme(Brightness.dark),
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.login: (context) =>  LoginPage(),
        AppRoutes.register: (context) => RegisterPage(),
        AppRoutes.forgotPassword: (context) => ForgotPasswordPage(),
      },
    );
  }

  // Configuración del tema
  ThemeData _buildTheme(Brightness brightness) {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorSchemeSeed: Colors.blue,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ), 
      appBarTheme: const AppBarTheme(
        centerTitle: true,
      ),
    );
  }
}
