

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';


import 'package:hadilan/views/yap%C4%B1ld%C4%B1.dart';
import 'package:shared_preferences/shared_preferences.dart';



class InstagramLoginPage extends StatefulWidget {
  final bool dataiki;
  const InstagramLoginPage({ required this.dataiki,super.key});

  @override
  State<InstagramLoginPage> createState() => _InstagramLoginPageState();
}

class _InstagramLoginPageState extends State<InstagramLoginPage> {
      final GlobalKey webViewKey = GlobalKey();
    
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

          

          
          
          
         


      late PullToRefreshController pullToRefreshController;
      String url = "";
      double progress = 0;
      final urlController = TextEditingController();
      @override
      void initState() {
        super.initState();
        //showCookies();
        //showcokiler();
        
        if(widget.dataiki == true){
                          cookieManager.deleteAllCookies();
                          //print("instagram login page veri = ${widget.dataiki}");
                        }
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
      CookieManager cookieManager = CookieManager.instance();
       // cookie list 
      
      
      
     
      
      var Cokiler = ["","",""];
      void setCookiess(){
        cookieManager.getCookies(url: Uri.parse("https://www.instagram.com")).then((value){
          for (var element in value) { 
            if(element.name == "sessionid"){
              Cokiler[0] = element.value;
            }
            if(element.name == "csrftoken"){
              Cokiler[1] = element.value;
            }
            if(element.name == "ds_user_id"){
              Cokiler[2] = element.value;
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
                        
                        
                        if(url.toString().endsWith("https://www.instagram.com/accounts/onetap/?next=%2F")){
                          setCookiess();
                        }
                        if(url.toString().endsWith("https://www.instagram.com/")){
                          
                          setCookiess();
                          SharedPreferences pref =await SharedPreferences.getInstance();
                          var sessionid = pref.setString("sessionid", Cokiler[0]);
                          var csrftoken = pref.setString("csrftoken", Cokiler[1]);
                          var ds_user_id = pref.setString("ds_user_id", Cokiler[2]);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => YapildiPage(cookies: Cokiler)));
                          
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
