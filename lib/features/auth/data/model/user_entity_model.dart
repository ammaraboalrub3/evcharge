import 'package:evcharge/features/auth/domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserEntitModel extends UserEntity {
  UserEntitModel({
    required super.email,
    required super.uId,
  });
  factory UserEntitModel.fromFirebaseUser(User user) {
    return UserEntitModel(
      email: user.email ?? "",
      uId: user.uid,
    );
  }

  factory UserEntitModel.fromJson(Map<String, dynamic> json) {
    return UserEntitModel(
      email: json["email"],
      uId: json["uId"],
    );
  }

  factory UserEntitModel.fromEntity(UserEntity user) {
    return UserEntitModel(email: user.email, uId: user.uId);
  }

  toMap() {
    return {"email": email, "uId": uId};
  }
}
