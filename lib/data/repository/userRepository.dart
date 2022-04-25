



import 'package:dio/dio.dart';
import 'package:plutertest/data/api/Api.dart';

import '../model/user.dart';

class UserRepository {

  final ApiClient client = ApiClient(Dio());
  // factory UserRepository() {
  //   return UserRepository();
  // }
  Future<User> getUser(){
    return client.getUsers();
  }
}

