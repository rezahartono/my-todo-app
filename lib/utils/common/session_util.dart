// ignore_for_file: unnecessary_new

import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:my_todo/utils/common/app_logger.dart';
import 'package:my_todo/utils/constants/string_constant.dart';
import 'package:my_todo/data/models/authentication_model.dart';

class SessionUtil {
  static final GetStorage store = new GetStorage();
  generate({required AuthenticationModel auth}) {
    String authString = json.encode(auth.toJson());

    return store.write(constant.authentication, authString);
  }

  clear() {
    return store.remove(constant.authentication);
  }

  Future<bool> isActive() async {
    if (store.read(constant.authentication) != null) {
      return true;
    } else {
      return false;
    }
  }

  AuthenticationModel get() {
    AuthenticationModel result = new AuthenticationModel();
    try {
      String authData = store.read(constant.authentication);

      result = AuthenticationModel.fromJson(json.decode(authData));
    } catch (e) {
      logger.safeLog()?.e(e);
    }

    return result;
  }
}

SessionUtil session = new SessionUtil();
