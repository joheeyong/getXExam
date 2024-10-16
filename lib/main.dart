import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttergetxexam/routes/app_pages.dart';
import 'package:fluttergetxexam/routes/app_routes.dart';
import 'package:fluttergetxexam/themes/app_theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sembast/sembast.dart';
import 'data/DatabaseConfig.dart';
import 'data/LocalStorage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  LocalStorage();
  await DatabaseConfig.init(StoreRef<dynamic, dynamic>.main());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.DASHBOARD,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
    );
  }
}
