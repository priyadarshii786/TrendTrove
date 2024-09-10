import 'package:flutter/material.dart';

//! ============== State management ka sbse simple approach yahi hai ==============
//! ============== "AppWidget" naam ka class banaye and then uske andar "boldTextFieldStyle" naam ka class banaye. ==============
//* ============== Ab jb v particular state ko call krna hoga toh hm uske function name se usko call kr skte hai ==============

class AppWidget {
  static TextStyle boldTextFieldStyle() {
    return TextStyle(
        color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold);
  }

  static TextStyle lightTextFieldStyle() {
    return TextStyle(
        color: Colors.black54, fontSize: 20.0, fontWeight: FontWeight.w500);
  }
}
