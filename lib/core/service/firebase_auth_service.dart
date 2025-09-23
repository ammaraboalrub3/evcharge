import 'package:evcharge/core/errors/exeptions.dart';
import 'package:evcharge/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/services.dart';

class FirebaseAuthService {
  Future deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }

  Future<User?> createUserWithEmailAndPassword(
      {required String email, required String password, context}) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomExceptions(errorMessgae: S.of(context).password_weak);
      } else if (e.code == 'email-already-in-use') {
        throw CustomExceptions(
          errorMessgae: S.of(context).email_exist,
        );
      } else {
        throw CustomExceptions(errorMessgae: S.of(context).error_mess);
      }
    } on PlatformException catch (e) {
      throw CustomExceptions(
          errorMessgae: e.message ?? S.of(context).error_mess);
    } catch (e) {
      throw CustomExceptions(errorMessgae: S.of(context).error_mess);
    }
  }

  Future<User?> signInWIthEmailAndPassword(
      {required String email, required String password, context}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        throw CustomExceptions(
          errorMessgae: S.of(context).incorrect_email_and_password,
        );
      } else if (e.code == 'invalid-email') {
        throw CustomExceptions(
            errorMessgae: S.of(context).invalid_email_format);
      } else if (e.code == 'invalid-credential' ||
          e.code == 'INVALID_LOGIN_CREDENTIALS') {
        throw CustomExceptions(
          errorMessgae: S.of(context).incorrect_email_and_password,
        );
      } else if (e.code == 'too-many-requests') {
        throw CustomExceptions(
          errorMessgae: S.of(context).too_many_request,
        );
      } else {
        throw CustomExceptions(errorMessgae: S.of(context).error_mess);
      }
    } on PlatformException catch (e) {
      throw CustomExceptions(
          errorMessgae: e.message ?? S.of(context).error_mess);
    } catch (e) {
      throw CustomExceptions(errorMessgae: S.of(context).error_mess);
    }
  }

  bool isLoggedIn() {
    return FirebaseAuth.instance.currentUser != null;
  }
}
