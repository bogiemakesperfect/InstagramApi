import 'package:flutter/material.dart';
import 'package:hadilan/views/instagram_login_page.dart';

class HomePage extends StatefulWidget {
  final bool data;
  const HomePage({required this.data,super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Home Page Veri= ${widget.data}");
  }
  
  
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            ElevatedButton(
              onPressed: (){
                    
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InstagramLoginPage(dataiki: widget.data,)),
                    
                  );
                 
                  

              },
             
             child: Text("Giriş yap")),
          ],
        ),
      ),
    );
  }
}