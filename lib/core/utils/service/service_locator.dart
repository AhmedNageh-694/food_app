import 'package:foodapp/Features/auth/Presentaion/repo/auth_repo.dart';
import 'package:foodapp/Features/auth/Presentaion/repo/auth_repo_implementation.dart';
import 'package:get_it/get_it.dart';

class ServiceLocator {
  final getIt = GetIt.instance;
  void setupServiceLocator() {
    getIt.registerSingleton<AuthRepo>(AuthRepoImplement());
  }
}
