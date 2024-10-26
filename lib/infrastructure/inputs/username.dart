import 'package:formz/formz.dart';

// Errores que maneja el campo
enum UsernameError { empty, length }

class Username extends FormzInput<String, UsernameError> {
  // Establece el valor inicial
  const Username.pure() : super.pure('');

  // Forma de como cambiara el valor
  const Username.dirty({String value = ''}) : super.dirty(value);

  String? get errorMessage {
    if(isValid || isPure) return null;
    if(displayError == UsernameError.empty) return 'El campo es requerido';
    if(displayError == UsernameError.length) return 'Ingresa minimo 6 caracteres';
    return null;
  }

  // El validator retorna null si no hay erroes
  @override
  UsernameError? validator(String value) {
    if(value.isEmpty || value.trim().isEmpty) return UsernameError.empty;
    if(value.length < 6) return UsernameError.length;

    return null;
  }
}

