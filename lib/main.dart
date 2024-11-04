import 'dart:async';

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Splash());
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const Kitab();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
            child: Image.asset(
          'assets/logo.jpg',
          fit: BoxFit.cover,
        ))
      ],
    ));
  }
}

class Kitab extends StatelessWidget {
  const Kitab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Container(
                    width: 100,
                    height: 90,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: const Text(
                      '    Sudair\n    Khan',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  decoration: const BoxDecoration(color: Colors.green),
                  accountEmail: const Text('sudairkhan@gmail.com')),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MyApp();
                  }));
                },
                child: const ListTile(
                  leading: Icon(Icons.refresh),
                  title: Text('Refresh'),
                ),
              ),
              InkWell(
                onTap: (){
                  Share.share('');
                },
                child: const ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Share'),
                ),
              )


            ],

    )
        ),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Sudair Khan',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35,
                fontStyle: FontStyle.italic),
          ),
          centerTitle: true,
        ),
        body: Container(child: SfPdfViewer.asset('assets/sample.pdf')),
        bottomNavigationBar: Container(
          color: Colors.blue,
          height: 20,
        ));
  }
}
class TESTCLASS extends StatefulWidget {
  const TESTCLASS({super.key});

  @override
  State<TESTCLASS> createState() => _TESTCLASSState();
}

class _TESTCLASSState extends State<TESTCLASS> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
