import 'package:dartz/dartz.dart';
import 'package:evcharge/core/errors/exeptions.dart';
import 'package:evcharge/core/errors/failuer.dart';
import 'package:evcharge/core/service/firebase_auth_service.dart';
import 'package:evcharge/features/auth/domain/entities/user_entity.dart';
import 'package:evcharge/features/auth/domain/repo/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart' show User;

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({
    required this.firebaseAuthService,
  });

  @override
  Future<Either<Failuer, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final userEntity = UserEntity(email: email, uId: user!.uid);
      return right(userEntity);
    } on CustomExceptions catch (e) {
      await deleatUser(user);
      return left(ServerFailuer(errorMessage: e.errorMessgae));
    } catch (e) {
      await deleatUser(user);
      return left(ServerFailuer(errorMessage: e.toString()));
    }
  }

  Future<void> deleatUser(User? user) async {
    if (user != null) {
      await user.delete();
    }
  }

  @override
  Future<Either<Failuer, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final user = await firebaseAuthService.signInWIthEmailAndPassword(
        email: email,
        password: password,
      );
      final userEntity = UserEntity(
        uId: user?.uid ?? "",
        email: user?.email ?? '',
      );

      return right(userEntity);
    } on CustomExceptions catch (e) {
      return left(ServerFailuer(errorMessage: e.errorMessgae));
    } catch (e) {
      return left(ServerFailuer(errorMessage: e.toString()));
    }
  }
}
