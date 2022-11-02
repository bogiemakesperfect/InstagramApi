



import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hadilan/models/UserModel.dart';
import 'package:hadilan/models/cookie_model.dart';

import 'package:hadilan/views/HomePage.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'instagram_login_page.dart';

class YapildiPage extends StatefulWidget {
  final List cookies;
  
  const YapildiPage({super.key, required this.cookies});

  @override
  State<YapildiPage> createState() => _YapildiPageState();
}

class _YapildiPageState extends State<YapildiPage> {
  
  void setLocalCookie() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("sessionid", widget.cookies[0]);
    prefs.setString("ds_user_id", widget.cookies[1]);
    prefs.setString("csrftoken", widget.cookies[2]);
    
  }
    late Future<Ney> futureAlbum;
    
   Future<Ney> getRequest() async {
    var url = Uri.parse('https://i.instagram.com/api/v1/accounts/current_user/');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var sessionid = prefs.getString("sessionid");
    var ds_user_id = prefs.getString("ds_user_id");
    var csrftoken = prefs.getString("csrftoken");
    print("sessionid = $sessionid");
    print("ds_user_id = $ds_user_id");
    print("csrftoken = $csrftoken");
    
    var response = await get(url, headers: {
      'cookie': 'sessionid=${sessionid}; csrftoken=${csrftoken}; ds_user_id=${ds_user_id};',
      'user-agent': "Instagram 219.0.0.12.117 Android",
    });
    print(response.body);
    
    return Ney.fromJson(jsonDecode(response.body));
   }
  
   
   @override
  void initState() {
    // TODO: implement initState
    
    super.initState();
    setLocalCookie();
   print("Widget 0 = ${widget.cookies[0]}");
    print("Widget 1 = ${widget.cookies[1]}");
    print("Widget 2 = ${widget.cookies[2]}");
    
    futureAlbum = getRequest();
   
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    
  }

  late bool loggedout;
 

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
              
              
              FutureBuilder<Ney>(
                future: futureAlbum,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: [
                        Text(snapshot.data!.user!.username),
                         Image.network(snapshot.data!.user!.profilePicUrl.toString()),
                         Text(snapshot.data!.user!.fullName),
                         Text(snapshot.data!.user!.biography),
                         Text(snapshot.data!.user!.allMediaCount.toString()),
                          Text(snapshot.data!.user!.birthday.toString()),
                          Text(snapshot.data!.user!.allowedCommenterType),
                          Text(snapshot.data!.user!.isPrivate.toString()),
                          Text(snapshot.data!.user!.isVerified.toString()),
                          Text(snapshot.data!.user!.isBusiness.toString()),
                      ],
                    );
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }

                  // By default, show a loading spinner.
                  return const CircularProgressIndicator();
                },
              ),
    
            
              
    
    
    
    
              
              
    
    
    
    
    
    
              ElevatedButton( // !!! ÇIKIŞ YAP BUTONU
                onPressed: () async {
                  SharedPreferences prefs  = await SharedPreferences.getInstance();
                  //signOut();
                  loggedout = true;
                  var logged  = prefs.setBool("logged", loggedout);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(data: loggedout),));
                  
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