import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'application/repositories/auth_repository.dart';
import 'application/states/auth_state.dart';
import 'application/storage/local_storage.dart';
import 'application/storage/storage_keys.dart';
import 'routers/route_constant.dart';
import 'routers/router.dart';
import 'values/branding_color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.initializeSharedPreferences();
  runApp(MadalaliApp());
}

class MadalaliApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Injector(
      inject: [Inject<AuthState>(() => AuthState(AuthRepositoryImpl()))],
      builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Madalali4u',
          theme: ThemeData(
            primarySwatch: brandingColor,
          ),
          onGenerateRoute: Router.onGenerateRoute,
          initialRoute:
              LocalStorage.getItem(TOKEN) != null ? mainRoute : signInRoute,
        );
      },
    );
  }
}
