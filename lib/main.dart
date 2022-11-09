import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hadilan/views/HomePage.dart';
import 'package:hadilan/views/instagram_login_page.dart';
import 'package:hadilan/views/yap%C4%B1ld%C4%B1.dart';



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




  

            Future<void> checktwo() async {
              SharedPreferences prefs =await SharedPreferences.getInstance();
              if(prefs.containsKey("csrftoken") && prefs.containsKey("sessionid") && prefs.containsKey("ds_user_id")){
                Navigator.pushReplacement(
                    context,MaterialPageRoute(builder: (context) => InstagramLoginPage()),);
                
                print("Giriş yapıldı");
                print(prefs.getString("csrftoken"));
                print(prefs.getString("sessionid"));
                print(prefs.getString("ds_user_id"));
              }
              else{
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => HomePage()),);
                  print("Giriş yap !");
                    print(prefs.getString("csrftoken"));
                print(prefs.getString("sessionid"));
                print(prefs.getString("ds_user_id"));
              }
                

              }
            








 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //checklog();
    
    checktwo();
    
  }

  @override
  Widget build(BuildContext context) {
    
    return Container();
  }
}