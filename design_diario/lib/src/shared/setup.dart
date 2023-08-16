import 'package:get_it/get_it.dart';

import '../Presentation/login/core/domain/repositories/user_auth_repository.dart';
import '../Presentation/login/core/domain/use_cases/get_user_use_case.dart';
import '../Presentation/login/core/infra/repositories/user_auth_repository_impl.dart';
import '../Presentation/login/core/infra/use_cases/get_user_use_case.dart';
import '../Presentation/login/cubit/cubit/user_auth_cubit.dart';

final GetIt setup = GetIt.instance;

void registerDependencies() {
  setup.registerFactory<UserAuthRepository>(() => UserAuthRepositoryImpl());

  setup.registerFactory<GetUserUseCase>(
    () => GetUserUseCaseImpl(
      userAuthRepository: setup.get<UserAuthRepository>(),
    ),
  );

  setup.registerFactory<UserAuthCubit>(
    () => UserAuthCubit(
      getUserUseCase: setup.get<GetUserUseCase>(),
    ),
  );
}
