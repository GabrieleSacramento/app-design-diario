import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/domain/use_cases/get_user_use_case.dart';

part 'user_auth_state.dart';

class UserAuthCubit extends Cubit<UserAuthState> {
  UserAuthCubit({required this.getUserUseCase}) : super(UserAuthInitial());

  final GetUserUseCase getUserUseCase;

  void getUserCredential(String email, String password) async {
    emit(UserAuthLoading());
    final result = await getUserUseCase(email, password);
    if (result != null) {
      emit(UserAuthSuccess());
    }
  }
}
