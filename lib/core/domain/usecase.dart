import 'dart:async';

abstract class UseCaseWithRequiredParams<T, P> {
  FutureOr<T> call({required P params}); // params are required
}


abstract class UseCaseWithOptionalParams<T, P> {
  FutureOr<T> call({P? params}); // params are optional
}
