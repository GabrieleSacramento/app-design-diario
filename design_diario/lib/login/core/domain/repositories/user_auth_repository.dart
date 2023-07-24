import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../failure/failure_erros.dart';

abstract class UserAuthRepository {
  Future<Either<Failure, UserCredential>> getUser({
    required String email,
    required String password,
  });
}
