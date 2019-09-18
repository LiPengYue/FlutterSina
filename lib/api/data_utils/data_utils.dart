
import 'dart:convert';
import 'package:convert/convert.dart';
import 'dart:core';
import 'package:fullter_sina/api/api.dart';
import 'package:fullter_sina/api/net_utils/net_utils.dart';
import 'package:dio/dio.dart';

class DataUtils {

  static String token = '';
  
  static Future logIn(Map<String,String> params) async {
    Map<String, String> _params = params;
    _params["client_id"] = '108320941';
    _params["client_secret"] = '98d95899f6c0d601f1e29ebde8636c14';
    _params["grant_type"] = 'authorization_code';
    _params["redirect_uri"] = "http://www.baidu.com";


    try {
      //404
      var response = NetUtils.post(Api.OAUTH2_ACCESS_TOKEN, _params);
      Future data = response;
      return data;

    } on DioError catch (e) {
      if (e.response != null) {
        print(e.response.data);
        print(e.response.headers);
        print(e.response.request);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        print(e.request);
        print(e.message);
      }
    }
  }


  /// 获取微博
  static Future getHomeList() async {
    Map<String, String> _params = Map();
    _params["access_token"] =  await Api.getToken();
//https://api.weibo.com/2/statuses/home_timeline.json?access_token=2.007oFfHEDkPS1C746b1dd856qkeL_E
    try {
      var respons = await NetUtils.get(Api.HOME_TIMELINE,_params);
      var re = respons;
      return respons;
    } catch(e) {
      print(e);
      return null;
    }
  }

  /// 获取微博评论 id 被获取评论的微博的Id
  static Future getCommentsWithId(int ID) async {
    try {

      Map<String,String> _params = Map();

      ID = ID == null ? 0 : ID;

      _params["access_token"] =  await Api.getToken();
      _params["id"] = ID.toString();
      var respons = await NetUtils.get(Api.GETCOMMENTS,_params);
      return respons;
    }catch (e){
      print(e);
      return null;
    }

  }
}


