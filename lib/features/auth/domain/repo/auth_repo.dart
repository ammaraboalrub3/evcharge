import 'package:dartz/dartz.dart';
import 'package:evcharge/core/errors/failuer.dart';

import 'package:evcharge/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failuer, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
  );

  Future<Either<Failuer, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  );
}
