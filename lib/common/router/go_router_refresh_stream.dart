import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_alphavn_base/app/auth_cubit.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<AuthState> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
      (value) {
        print(">>>>>>> ${value.isAuthenticated}");
        notifyListeners();
      },
    );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
