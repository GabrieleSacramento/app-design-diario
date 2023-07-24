import 'package:dartz/dartz.dart';
import 'package:design_diario/failure/failure_erros.dart';
import 'package:design_diario/login/core/domain/repositories/user_auth_repository.dart';
import 'package:design_diario/login/core/domain/use_cases/get_user_use_case.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GetUserUseCaseImpl implements GetUserUseCase {
  final UserAuthRepository userAuthRepository;
  GetUserUseCaseImpl({required this.userAuthRepository});

  @override
  Future<Either<Failure, UserCredential>> call(
      {required String email, required String password}) {
    return userAuthRepository.getUser(email: email, password: password);
  }
}
