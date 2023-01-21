import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:uas_43a87006190319/controller/favorite_controller.dart';
import 'package:uas_43a87006190319/screens/home_scr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FavoritesProv>(
      create: (context) => FavoritesProv(),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Movies App',
        home: HomePage(),
        initialRoute: '/',
      ),
    );
  }
}
