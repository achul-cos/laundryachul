import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/user_model.dart';

class AuthProvider extends ChangeNotifier {
  User? _user;
  bool _isLoggedIn = false;

  User? get user => _user;
  bool get isLoggedIn => _isLoggedIn;

  // Login dengan hardcoded credentials
  Future<bool> login(String email, String password) async {
    // Simulasi delay API
    await Future.delayed(Duration(milliseconds: 500));

    // Hardcoded credentials
    if (email == 'admin@laundry.com' && password == 'password') {
      _user = User(
        id: '1',
        email: email,
        name: 'Mario Wicaksono',
        role: 'Owner',
      );
      _isLoggedIn = true;
      notifyListeners();
      return true;
    }
    return false;
  }

  // Logout
  void logout() {
    _user = null;
    _isLoggedIn = false;
    notifyListeners();
  }
}
