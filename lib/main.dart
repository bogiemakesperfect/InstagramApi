import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hadilan/views/HomePage.dart';
import 'package:shared_preferences/shared_preferences.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  if (Platform.isAndroid) {
    await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
  }

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: MyApp()
  ));
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  

  @override
  Widget build(BuildContext context) {
    
    return HomePage(data: false,);
  }
}