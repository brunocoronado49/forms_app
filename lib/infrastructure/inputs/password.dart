import 'package:formz/formz.dart';

// Errores que maneja el campo
enum PasswordError { empty, length }

class Password extends FormzInput<String, PasswordError> {
  // Establece el valor inicial
  const Password.pure() : super.pure('');

  // Forma de como cambiara el valor
  const Password.dirty({String value = ''}) : super.dirty(value);

  String? get errorMessage {
    if(isValid || isPure) return null;
    if(displayError == PasswordError.empty) return 'El campo es requerido';
    if(displayError == PasswordError.length) return 'Ingresa minimo 6 caracteres';
    return null;
  }

  // El validator retorna null si no hay erroes
  @override
  PasswordError? validator(String value) {
    if(value.isEmpty || value.trim().isEmpty) return PasswordError.empty;
    if(value.length < 6) return PasswordError.length;

    return null;
  }
}

