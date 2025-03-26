import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear cuenta'),
        centerTitle: true,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade800, Colors.blue.shade600],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            // Icono de usuario (sin selector de avatar)
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blue.shade300,
                  width: 2,
                ),
              ),
              child: Icon(
                Icons.person_add,
                size: 50,
                color: Colors.blue.shade800,
              ),
            ),
            const SizedBox(height: 32),

            // Formulario
            _buildTextField(label: 'Nombre completo', icon: Icons.person),
            const SizedBox(height: 16),
            _buildTextField(label: 'Correo electrónico', icon: Icons.email),
            const SizedBox(height: 16),
            _buildTextField(label: 'Contraseña', icon: Icons.lock, isPassword: true),
            const SizedBox(height: 16),
            _buildTextField(label: 'Confirmar contraseña', icon: Icons.lock, isPassword: true),
            const SizedBox(height: 32),

            // Botón de registro
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade800,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 3,
                ),
                onPressed: () {
                  // Lógica de registro
                  Navigator.pop(context); // Regresa al login después de registrar
                },
                child: const Text(
                  'REGISTRARME',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            // Enlace a login
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: RichText(
                text: TextSpan(
                  text: '¿Ya tienes cuenta? ',
                  style: TextStyle(color: Colors.grey.shade600),
                  children: const [
                    TextSpan(
                      text: 'Inicia sesión',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required IconData icon,
    bool isPassword = false,
  }) {
    return TextFormField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.blue.shade800, width: 2),
        ),
        filled: true,
        fillColor: Colors.grey.shade50,
      ),
    );
  }
}