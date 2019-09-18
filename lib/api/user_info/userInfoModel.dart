

import 'package:flutter/material.dart';
import 'package:fullter_sina/api/api.dart';

class UserInfoModel {

  String access_token; //": "ACCESS_TOKEN",
  String expires_in; //": 1234,
  String remind_in; //":"798114",
  String uid; //":"12341234"

  UserInfoModel({
    this.access_token,
    this.expires_in,
    this.remind_in,
    this.uid
  });

  static final UserInfoModel _userInfoCache = UserInfoModel();
  static final  Map<String,String> json = Map();
  factory UserInfoModel.fromMap(Map<String,String> json) {


    String access_token = json["access_token"];
    String expires_in = json["expires_in"];
    String remind_in = json["remind_in"];
    String uid = json["uid"];

    if (access_token.length > 0){
      _userInfoCache.access_token = access_token;
      Api.setToken(access_token);
    }
    if (expires_in.length > 0){
      _userInfoCache.expires_in = expires_in;
    }
    if (remind_in.length > 0){
      _userInfoCache.remind_in = remind_in;
    }
    if (uid.length > 0){
      _userInfoCache.uid = uid;
    }

    return _userInfoCache;
  }

}