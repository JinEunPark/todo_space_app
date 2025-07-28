import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_app/db/isar_provider.dart';

import '../model/user_model.dart';

final userServiceProvider = Provider<UserService>((ref) {
  return UserService(ref);
});

class UserService {

  final Isar isar;

  UserService(Ref ref): isar = ref.watch(isarProvider);

  // 현재 단일 유저 정책으로 1 번 유저 정보 반환
  // [convention]서비스 단에서 null 처리 하지 않음
  // => 해당 서비스는 단순하게 DB 에서 값을 조회하는 나머지 해당 서비스에 대한 오류는 레포지토리 단에서 수행할 것

  Future<User?> getUserInfo() async {

    final source = isar;

    final currentUser = source.isOpen ? source.users.get(1) : null;

    return currentUser;
  }

  Future<Id> saveUserInfo(User user) async {
    final source = isar;

    final id = await source.writeTxn(() async {
      return await source.users.put(user);
    });

    return id;
  }




}