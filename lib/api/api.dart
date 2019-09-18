import 'package:shared_preferences/shared_preferences.dart';

class Api {
  static setToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (token != null && token.isNotEmpty) {
      prefs.setString("TOKEN_TOKEN", token);
    }else{
      prefs.remove("TOKEN_TOKEN");
    }
  }

  static Future getToken() async{
    var token = await _Token();
    return token;
  }

  static _Token() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.get("TOKEN_TOKEN");
    return token;
  }

  static const String BASE_URL = 'https://api.weibo.com/';

  // oauth https://api.weibo.com/oauth2/authorize?client_id=108320941&redirect_uri=http://www.baidu.com
  static const String  OAUTH2_AUTHORIZE = BASE_URL + 'oauth2/authorize';// oauth 请求授权client_id redirect_uri
  static const String  OAUTH2_ACCESS_TOKEN = BASE_URL + 'oauth2/access_token';//获取授权 token

/// MARK: - 获取微博2/statuses/home_timeline.json?access_token=2.007oFfHEDkPS1C746b1dd856qkeL_E
/// https://api.weibo.com/2/statuses/home_timeline.json?access_token=2.007oFfHEDkPS1C746b1dd856qkeL_E
  static const String HOME_TIMELINE = BASE_URL + "2/statuses/home_timeline.json";

  // 获取评论 get
static const String GETCOMMENTS = BASE_URL + "2/comments/show.json";
}