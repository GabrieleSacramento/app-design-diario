import '../../domain/repositories/user_auth_repository.dart';
import '../../domain/use_cases/get_user_use_case.dart';

class GetUserUseCaseImpl implements GetUserUseCase {
  final UserAuthRepository userAuthRepository;
  GetUserUseCaseImpl({required this.userAuthRepository});

  @override
  call(String email, String password) {
    return userAuthRepository.login(email, password);
  }
}
