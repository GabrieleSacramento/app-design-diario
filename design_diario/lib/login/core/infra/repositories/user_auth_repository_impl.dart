import 'package:dartz/dartz.dart';
import 'package:design_diario/failure/failure_erros.dart';
import 'package:design_diario/login/core/domain/repositories/user_auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserAuthRepositoryImpl implements UserAuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<Either<Failure, UserCredential>> getUser(
      {required String email, required String password}) async {
    try {
      final result = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return Right(result);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return Left(
          NotFoundError(message: 'Usuário não encontrado'),
        );
      }
      throw Exception();
    }
  }
}
