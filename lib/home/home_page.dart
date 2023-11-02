import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget{
  HomePage({super.key});

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      key: _globalKey,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Home Page"),
        //backgroundColor: Color.green.withOpacity(0,7),
        backgroundColor: Colors.green.shade200,
        // backgroundColor: Color.fromRGBO(200,140,12,3),
        // backgroundColor: const Color(0xFF326721),
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed : (){
            _globalKey.currentState?.openDrawer();
          },
          icon: const Icon(CupertinoIcons.info),
        ),
        automaticallyImplyLeading: false,
        actions: [
            IconButton(
              onPressed: (){},
               icon: const Icon(Icons.search),
               ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(10),
           child: Text("SALOOM!")
           ),
           titleSpacing: 100,
          //  elevation: 10,
          shadowColor: Colors.blue,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            side: BorderSide(color: Colors.red,width: 3),
          ),
          toolbarHeight: 80,
          toolbarOpacity: 0.6,
          leadingWidth: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: const Center(
        child:Text("Hello Flutter!"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        splashColor: Colors.green,
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
        child: const Icon(Icons.sms),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: const Drawer(
        child: Column(
          children: [
              SizedBox(height: 40),
              Text("Menu item 1"),
              SizedBox(height: 8),
              Text("Menu item 2"),
              SizedBox(height: 8),
              Text("Menu item 3"),
              SizedBox(height: 8),
              Text("Menu item 4"),
        ]
        ),
      ),
    );
  } 
}