sealed class HomeState {
  T when<T>({
    required T Function() init,
    T Function(LoadingHomeState l)? loading,
    T Function(ErrorHomeState e)? error,
    T Function(SuccessHomeState s)? success,
  }) {
    return switch (this) {
      InitHomeState _ => init(),
      final ErrorHomeState e => error?.call(e) ?? init(),
      final LoadingHomeState l => loading?.call(l) ?? init(),
      final SuccessHomeState s => success?.call(s) ?? init(),
    };
  }
}

class SuccessHomeState extends HomeState {}

class InitHomeState extends HomeState {}

class ErrorHomeState extends HomeState {}

class LoadingHomeState extends HomeState {}
