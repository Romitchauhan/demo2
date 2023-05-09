import 'package:demo2/utils/routes/routes.dart';
import 'package:flutter/services.dart';
import 'package:demo2/utils/routes/routes_name.dart';
import 'package:demo2/view_model/auth_view_,model.dart';
import 'package:demo2/view_model/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await SystemChrome.setPreferredOrientations(
     [
       DeviceOrientation.portraitUp,
       DeviceOrientation.portraitDown,
       DeviceOrientation.landscapeRight,
       DeviceOrientation.landscapeLeft,
     ]
   );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
        ChangeNotifierProvider(create: (_) => UserViewModel())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'practical Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: RoutesName.login,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}

