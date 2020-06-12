import 'package:dio/dio.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import '../../../application/classes/errors/common_error.dart';
import '../../../application/states/auth_state.dart';

class SignInFormModel {
  final AuthState _authState = Injector.get<AuthState>();

  String email;
  String password;

  void setEmail(String email) {
    // check the email validation
    if (!validateEmail(email)) {
      throw CommonError(message: "Invalide email");
    }

    this.email = email;
  }

  void setPassword(String password) {
    // check the password validation
    if (password.length < 6) {
      throw CommonError(message: "Password lenght should be more than 6 chars");
    }

    this.password = password;
  }

  bool validateData() {
    return this.email != null &&
        this.password != null &&
        this.password.length >= 6 &&
        this.validateEmail(this.email);
  }

  bool validateEmail(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  Future<void> submitSignIn() async {
    // Dio dio = new Dio();
    // Response response = await dio.post(path)

    return await _authState.signIn(email: this.email, password: this.password);
  }
}
