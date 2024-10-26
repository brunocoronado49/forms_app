import 'package:formz/formz.dart';

// Errores que maneja el campo
enum EmailError { empty, length }

class Email extends FormzInput<String, EmailError> {
  // Establece el valor inicial
  const Email.pure() : super.pure('');

  // Forma de como cambiara el valor
  const Email.dirty({String value = ''}) : super.dirty(value);

  // El validator retorna null si no hay erroes
  @override
  EmailError? validator(String value) {
    if(value.isEmpty || value.trim().isEmpty) return EmailError.empty;
    if(value.length < 6) return EmailError.length;

    return null;
  }
}

