import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:wit_test/login_page/view_model/login_page_controller.dart';

class Provider {
  static Widget provider() {
    return MultiProvider(
      providers:  [
        ChangeNotifierProvider<LoginController>(create: (context)=>LoginController()),
      ],
    );
  }
}
