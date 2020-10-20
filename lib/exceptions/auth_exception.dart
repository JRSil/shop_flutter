class AuthException implements Exception {
  static const Map<String, String> errors = {
    'EMAIL_EXISTS': 'E-mail ja existe!',
    'OPERATION_NOT_ALLOWED': 'Operacao nao permitida',
    'TOO_MANY_ATTEMPTS_TRY_LATER': 'Tente mais tarde!',
    'EMAIL_NOT_FOUND': 'E-mail nao encontrado!',
    'INVALID_PASSWORD': 'Senha invalida!',
    'USER_DISABLED': 'Usuario desativado!',
  };

  final String key;

  const AuthException(this.key);

  @override
  String toString() {
    if (errors.containsKey(key)) {
      return errors[key];
    } else {
      return 'Ocorreu um erro na autenticacao!';
    }
  }
}
