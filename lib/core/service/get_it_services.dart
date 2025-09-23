import 'package:dio/dio.dart';
import 'package:evcharge/core/service/api_service.dart';

import 'package:evcharge/core/service/firebase_auth_service.dart';
import 'package:evcharge/features/auth/data/repo/auth_repo_impl.dart';
import 'package:evcharge/features/auth/domain/repo/auth_repo.dart';
import 'package:evcharge/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:evcharge/features/home/data/repo/home_repo_impl.dart';
import 'package:evcharge/features/home/domain/repo/home_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupAuth() async {
  if (!getIt.isRegistered<FirebaseAuthService>()) {
    getIt.registerLazySingleton<FirebaseAuthService>(
      () => FirebaseAuthService(),
    );
  }

  if (!getIt.isRegistered<AuthRepo>()) {
    getIt.registerLazySingleton<AuthRepo>(
      () => AuthRepoImpl(
        firebaseAuthService: getIt<FirebaseAuthService>(),
      ),
    );
  }
}

Future<void> setupServiceLocator() async {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepo>(
    HomeRepoImpl(HomeRemoteDataSourceImpl(getIt.get<ApiService>())),
  );
}
