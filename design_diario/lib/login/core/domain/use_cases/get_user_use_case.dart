import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../failure/failure_erros.dart';

abstract class GetUserUseCase {
  Future<Either<Failure, UserCredential>> call({
    required String email,
    required String password,
  });
}
