import 'package:fpdart/fpdart.dart';
import 'package:snapcheck/core/errors/failure.dart';
import 'package:snapcheck/features/Auth/domain/entities/device_info_entity.dart';
import 'package:snapcheck/features/Auth/domain/entities/user_entity.dart';
import 'package:snapcheck/features/Auth/domain/repositories/auth_repositories.dart';

class AuthRemoteRepositoriesImpl implements AutRepositories {
  @override
  Future<Either<Failure, UserEntity>> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      {required String email, required String password}) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword(
      {required UserEntity userEntity,
      required DeviceInfoEntity DeviceInfoEntity}) {
    // TODO: implement signUpWithEmailAndPassword
    throw UnimplementedError();
  }
}
