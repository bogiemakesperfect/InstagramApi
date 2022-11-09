



import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hadilan/main.dart';
import 'package:hadilan/models/UserModel.dart';
import 'package:hadilan/models/Users_Param1_info.dart';
import 'package:hadilan/models/cookie_model.dart';


import 'package:hadilan/views/HomePage.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart'; 
import 'package:shared_preferences/shared_preferences.dart';
import 'instagram_login_page.dart';

class YapildiPage extends StatefulWidget {
  
  
  const YapildiPage({super.key,});

  @override
  State<YapildiPage> createState() => _YapildiPageState();
}

class _YapildiPageState extends State<YapildiPage> {

                late Future<UserInfo> futureAlbum;
            
          Future<UserInfo> getRequest() async {
             SharedPreferences prefs = await SharedPreferences.getInstance();
              var ds_user_id = prefs.getString("ds_user_id");
              var sessionid = prefs.getString("sessionid");
              var csrftoken = prefs.getString("csrftoken");
              var datr = prefs.getString("datr");
              var shbid = prefs.getString("shbid");
              var shbts = prefs.getString("shbts");
              var dpr = prefs.getString("dpr");
              var ig_did = prefs.getString("ig_did");
              var ig_nrcb = prefs.getString("ig_nrcb");
              var rur = prefs.getString("rur");
              var mid = prefs.getString("mid");
            var url = Uri.parse('https://www.instagram.com/api/v1/users/$ds_user_id/info');
            
            var response = await get(url, headers: {
              'cookie': 'sessionid=$sessionid; csrftoken=$csrftoken; ds_user_id=$ds_user_id; datr=$datr',
              'user-agent': "Instagram 219.0.0.12.117 Android",
              
              'x-ig-app-id': "936619743392459", //794590088308990 -2055074604688395
              

              
            });
            
            print(response.body);
            
            return UserInfo.fromJson(jsonDecode(response.body));
          } 
   @override 
  void initState() {
    // TODO: implement initState
    
    super.initState();
    futureAlbum = getRequest();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    
  }

 
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text("giriş başarılı "),
              
              SizedBox(height: 20,),
              
             
              FutureBuilder<UserInfo>(
                future: futureAlbum,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: [
                        Text(snapshot.data!.user.username),
                        Text(snapshot.data!.user.fullName),
                        Text(snapshot.data!.user.biography),
                        Text(snapshot.data!.user.externalUrl),
                        Text(snapshot.data!.user.isPrivate.toString()),
                        Text(snapshot.data!.user.isVerified.toString()),
                        Text(snapshot.data!.user.followerCount.toString()),
                        Text(snapshot.data!.user.followingCount.toString()),
                        Text(snapshot.data!.user.mediaCount.toString()),
                        Text(snapshot.data!.user.pk.toString()),




                          
                          
                      ],
                    );
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }

                  // By default, show a loading spinner.
                  return const CircularProgressIndicator();
                },),
    
            
              
    
    
    
    
              
              
    
    
    
    
    
    
              ElevatedButton( // !!! ÇIKIŞ YAP BUTONU
                onPressed: () async {
                  SharedPreferences prefs  = await SharedPreferences.getInstance();
                  //signOut();
                  prefs.remove("sessionid");
                  prefs.remove("ds_user_id");
                  prefs.remove("csrftoken");
                  prefs.setBool("logged", true);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                  
                },
                child: Text("Çıkış yap"),
      
              )
            ],
          ),
        ),
      ),
    );
    
  }
}