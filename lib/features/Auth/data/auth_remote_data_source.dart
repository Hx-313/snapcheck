import 'package:snapcheck/features/Auth/data/user_model.dart';
import 'package:snapcheck/features/Auth/domain/entities/device_info_entity.dart';
import 'package:snapcheck/features/Auth/domain/entities/user_entity.dart';

abstract interface class AuthRemoteDataSource {
  Future<UserModel> signUpWithEmailAndPassword({
    required UserEntity userEntity,
    required DeviceInfoEntity deviceInfoEntity,
  });

  Future<UserModel> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<UserModel> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    try {
      return Future.value(
        UserModel(
          uid: '123',
          email: email,
          password: password,
          fName: '',
          lName: '',
        ),
      );
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<UserModel> signUpWithEmailAndPassword(
      {required UserEntity userEntity,
      required DeviceInfoEntity deviceInfoEntity}) {
    // TODO: implement signUpWithEmailAndPassword
    throw UnimplementedError();
  }
}
