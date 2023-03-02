import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Utils {
  static currentFocusNode(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static snackBarTop(String title, String subtitle) {
    Get.snackbar(title, subtitle, snackPosition: SnackPosition.TOP);
  }

  static snackBarBottom(String title, String subtitle) {
    Get.snackbar(title, subtitle, snackPosition: SnackPosition.BOTTOM);
  }
}
