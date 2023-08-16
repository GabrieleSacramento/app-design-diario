part of 'user_auth_cubit.dart';

@immutable
abstract class UserAuthState extends Equatable {
  const UserAuthState();
  @override
  List<Object> get props => [];
}

class UserAuthInitial extends UserAuthState {}

class UserAuthLoading extends UserAuthState {}

class UserAuthSuccess extends UserAuthState {}

class UserAuthError extends UserAuthState {}
