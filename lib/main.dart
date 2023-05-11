import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'helper/api_helper.dart';
import 'provider/bookmark_provider.dart';
import 'provider/theme_changer_provider.dart';
import 'screens/home_page.dart';

void main() async{

  await APIHelper.apiHelper.getCurrency();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeController(),
        ),
        ChangeNotifierProvider(
          create: (context) => BookMarkProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Currency Converter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        routes: {
          '/': (context) => const HomePage(),
        },
      ),
    ),
  );
}
