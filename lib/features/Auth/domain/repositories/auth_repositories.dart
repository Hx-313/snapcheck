import 'package:fpdart/fpdart.dart';
import 'package:snapcheck/core/errors/failure.dart';
import 'package:snapcheck/features/Auth/domain/entities/device_info_entity.dart';
import 'package:snapcheck/features/Auth/domain/entities/user_entity.dart';

abstract interface class AutRepositories {
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword({
    required UserEntity userEntity,
    required DeviceInfoEntity DeviceInfoEntity,
  });

  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<Failure, void>> signOut();

  Future<Either<Failure, UserEntity>> getCurrentUser();
}
