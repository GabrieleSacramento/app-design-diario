import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/repositories/user_auth_repository.dart';

class UserAuthRepositoryImpl implements UserAuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;
  User? user;

  @override
  login(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return _getUser();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Exception('user not found');
      }
    }
  }

  void _getUser() {
    user = _firebaseAuth.currentUser;
  }
}
