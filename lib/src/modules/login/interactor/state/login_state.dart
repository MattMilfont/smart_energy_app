sealed class LoginState {
  T when<T>({
    required T Function() init,
    T Function(SuccessLoginState s)? success,
    T Function(ErrorLoginState s)? error,
    T Function(LoadingLoginState s)? loading,
  }) {
    return switch (this) {
      InitLoginState _ => init(),
      final SuccessLoginState s => success?.call(s) ?? init(),
      final ErrorLoginState s => error?.call(s) ?? init(),
      final LoadingLoginState s => loading?.call(s) ?? init(),
    };
  }
}

class InitLoginState extends LoginState {}

class SuccessLoginState extends LoginState {}

class LoadingLoginState extends LoginState {}

class ErrorLoginState extends LoginState {
  String erroMsg;
  ErrorLoginState({required this.erroMsg});
}
