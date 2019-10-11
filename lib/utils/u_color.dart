
import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math';

/// c_aa_rr_gg_bb
class UColor {

  UColor._();

  static const CFFFFFF = Color(0xFFFFFFFF);

  static const C222222 =  Color(0xFF222222);
  static const C333333 =  Color(0xFF333333);
  static const CAFAFAF = Color(0xFFAFAFAF);
  static const CBFBFBF = Color(0xFFBFBFBF);
  static const CCFCFCF = Color(0xFFCFCFCF);
  static const CDFDFDF = Color(0xFFDFDFDF);
  static const CEFEFEF = Color(0xFFEFEFEF);
  static const CFAFAFA = Color(0xFFFAFAFA);
  static const CF9F9F9 = Color(0xFFF9F9F9);
  static const CFBFBFB = Color(0xFFFBFBFB);

  /// popview 背景色
  static const C6600000 = Color(0x66000000);

  /// 微博黄
  static const CE79936 = Color(0xFFE79936);

  /// @ 蓝
  static const CblueAccent =  Colors.blueAccent;

  static Color randomColor() {
    return Color.fromARGB(255, Random().nextInt(256)+0, Random().nextInt(256)+0, Random().nextInt(256)+0);
  }
}