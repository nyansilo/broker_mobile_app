import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../application/models/auth/sign_in_form_model.dart';
import '../../routers/route_constant.dart';
import '../../values/image_string.dart';
import '../../widgets/show_snackbar.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
        automaticallyImplyLeading: false,
      ),
      body: Injector(
        inject: [Inject<SignInFormModel>(() => SignInFormModel())],
        builder: (context) {
          final _singletonSignInFormModel =
              Injector.getAsReactive<SignInFormModel>();
          return Container(
            padding: EdgeInsets.all(16),
            child: ListView(
              children: <Widget>[
                Container(
                  height: 250,
                  child: Center(
                    child: Image.asset(ImageString.logo),
                  ),
                ),
                StateBuilder<SignInFormModel>(
                  builder: (context, signInFormModel) {
                    return TextFormField(
                      onChanged: (String email) {
                        signInFormModel.setState(
                            (state) => state.setEmail(email),
                            catchError: true);
                      },
                      decoration: InputDecoration(
                        errorText: signInFormModel.hasError
                            ? signInFormModel.error.message
                            : null,
                        prefixIcon: Icon(Icons.email),
                        hintText: "Enter your email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    );
                  },
                ),
                buildSizedBox(15),
                StateBuilder<SignInFormModel>(
                  builder: (_, signFormModel) {
                    return TextFormField(
                      onChanged: (String password) {
                        signFormModel.setState(
                            (state) => state.setPassword(password),
                            catchError: true);
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        errorText: signFormModel.hasError
                            ? signFormModel.error.message
                            : null,
                        prefixIcon: Icon(Icons.lock),
                        hintText: "Enter your password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    );
                  },
                ),
                buildSizedBox(25),
                StateBuilder(
                  //observe: () => _singletonSignInFormModel,
                  // observeMany: [
                  //   () => _singletonSignInFormModel,
                  // ],
                  models: [_singletonSignInFormModel],
                  builder: (_, model) {
                    return MaterialButton(
                      onPressed: () {
                        var validatedData =
                            _singletonSignInFormModel.state.validateData();

                        if (!validatedData) {
                          showSnackbar(
                              color: Colors.red,
                              key: _key,
                              message:
                                  "Data is invalid, please fill the form before submitting!");
                        } else {
                          _singletonSignInFormModel.setState(
                            (signInFormState) async {
                              await signInFormState.submitSignIn();
                              Navigator.pushNamed(context, homeRoute);
                            },
                            onError: (context, error) => showSnackbar(
                                color: Colors.red,
                                key: _key,
                                message: "${error.message}"),
                          );
                        }
                      },
                      height: 55,
                      shape: StadiumBorder(),
                      color: Theme.of(context).primaryColor,
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    );
                  },
                ),
                buildSizedBox(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("Don't have an account ? "),
                    FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, signUpRoute);
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

  SizedBox buildSizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }
}
