

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hadilan/main.dart';
import 'package:hadilan/services/proxy.dart';


import 'package:hadilan/views/yap%C4%B1ld%C4%B1.dart';
import 'package:shared_preferences/shared_preferences.dart';



class InstagramLoginPage extends StatefulWidget {
  
  const InstagramLoginPage({super.key});
  

  @override
  State<InstagramLoginPage> createState() => _InstagramLoginPageState();
}

class _InstagramLoginPageState extends State<InstagramLoginPage> {

      final GlobalKey webViewKey = GlobalKey();
      CookieManager cookieManager = CookieManager.instance();
      InAppWebViewController? webViewController;
      InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
            useShouldOverrideUrlLoading: true,
            mediaPlaybackRequiresUserGesture: false,
          ),
          android: AndroidInAppWebViewOptions(
            useHybridComposition: true,
          ),
          ios: IOSInAppWebViewOptions(
            allowsInlineMediaPlayback: true,
          ));

          

          
          Future<void> checklogged() async {
            SharedPreferences pref =await SharedPreferences.getInstance();
            print("-----------------------");
            print(pref.getString("csrftoken"));
            print(pref.getString("sessionid"));
            print(pref.getString("ds_user_id"));

             print("-----------------------");
            if(pref.getBool("logged") == false){
               print("****************************************************************");
            }
            if(pref.getBool("logged") == true){
              
              pref.clear();
              cookieManager.deleteAllCookies();
               print("-----------------------");
            print(pref.getString("csrftoken"));
            print(pref.getString("sessionid"));
            print(pref.getString("ds_user_id"));
             print("-----------------------");
            }
            

            }
          
          
         


      late PullToRefreshController pullToRefreshController;
      String url = "";
      double progress = 0;
      final urlController = TextEditingController();
      @override
      void initState() {
        super.initState();
       
        checklogged();
        
        
        //cookieManager.deleteAllCookies();
        pullToRefreshController = PullToRefreshController(
          options: PullToRefreshOptions(
            color: Colors.blue,
          ),
          onRefresh: () async {
            if (Platform.isAndroid) {
              webViewController?.reload();
            } else if (Platform.isIOS) {
              webViewController?.loadUrl(
                  urlRequest: URLRequest(url: await webViewController?.getUrl()));
            }
          },
        );
      }

      @override
      void dispose() {
        super.dispose();
        
      }

       @override
          void deactivate() {
            // TODO: implement deactivate
            super.deactivate();
            print("------------------deactivate------------------");
            
          }
      
       // cookie list 
      
      
      
     
      
      var Cokiler = ["","",""];
      Future<void> setCookiess() async {
        SharedPreferences pref =await SharedPreferences.getInstance();
        cookieManager.getCookies(url: Uri.parse("https://www.instagram.com")).then((value){
          for (var element in value) { 
            if(element.name == "sessionid"){
              pref.setString("sessionid", element.value);
            }
            if(element.name == "csrftoken"){
              pref.setString("csrftoken", element.value);
            }
            if(element.name == "ds_user_id"){
              pref.setString("ds_user_id", element.value);
            }
            if(element.name == "rur"){
              pref.setString("rur", element.value);
            }
            if(element.name == "mid"){
              pref.setString("mid", element.value);
            } 
            if(element.name == "datr"){
              pref.setString("datr", element.value);
            }
            if(element.name == "shbid"){
              pref.setString("shbid", element.value);
            }
            if(element.name == "shbts"){
              pref.setString("shbts", element.value);
            }
            if(element.name == "dpr"){
              pref.setString("dpr", element.value);
            }
            if(element.name == "ig_did"){
              pref.setString("ig_nrcb", element.value);
            }
            if(element.name == "ig_nrcb"){
              pref.setString("ig_nrcb", element.value);
            }
            

          }
 
        });
          
          
      }
       
        
       
          
  
      
        


       /*
       void showCookies(){
        cookieManager.getCookies(url: Uri.parse("https://instagram.com")).then((value) {
          value.forEach((element) {
            print("111111111-${element.name} ${element.value}");
          });
        });
       }
       void showcokiler(){
        print("******************************${Cokiler[0].toString()}");
       }
    */
    
       
      
      // ! Exprades date - final expiresDate = DateTime.now().add(Duration(days: 3)).millisecondsSinceEpoch; 

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          
          body: SafeArea(
              child: 
                Stack(
                  children: [
                    InAppWebView(
                      
                      key: webViewKey,
                      initialUrlRequest: URLRequest(url: Uri.parse("https://www.instagram.com/accounts/login/")),
                      
                      initialOptions: options,
                      pullToRefreshController: pullToRefreshController,
                      onWebViewCreated: (controller) async {
                        webViewController = controller;
 
                      },
                      
                      onLoadStart: (controller, url) async {
                        
                        setState(() {
                          this.url = url.toString();  
                          urlController.text = this.url;                   
                        });
                        //print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!url = $url");
                        if(url.toString().endsWith("https://www.instagram.com/")){                  
                          setCookiess();
                          Navigator.push(context, MaterialPageRoute(builder: (context) => YapildiPage()));
                          
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => YapildiPage()));
                        }
                      },
                     
                      androidOnPermissionRequest: (controller, origin, resources) async {
                        return PermissionRequestResponse(
                            resources: resources,
                            action: PermissionRequestResponseAction.GRANT);
                      },
                      
                      onLoadStop: (controller, url) async {
                        pullToRefreshController.endRefreshing();
                        setState(() {
                          this.url = url.toString();
                          urlController.text = this.url;
                        });
                        //print(await controller.evaluateJavascript(source: "document.cookie"));
                      },
                      onLoadError: (controller, url, code, message) {
                        pullToRefreshController.endRefreshing();
                      },
                      onProgressChanged: (controller, progress) {
                        if (progress == 100) {
                          pullToRefreshController.endRefreshing();
                        }
                        setState(() {
                          this.progress = progress / 100;
                          urlController.text = this.url;
                        });
                      },
                      onUpdateVisitedHistory: (controller, url, androidIsReload) {
                        setState(() {
                          this.url = url.toString();
                          urlController.text = this.url;
                        });
                      },
                       
                    ),
                    progress < 1.0
                        ? LinearProgressIndicator(value: progress)
                        : Container(),
                  ],
                ),
               
          ),
    );
  }
}
