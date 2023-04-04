import 'package:flutter/material.dart';
import 'package:qr_all/create_qr_page.dart';
import 'package:qr_all/read_qr_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentPage = 0;

  List<Widget> pages = const [ReadQRPage(), CreateQRPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: pages[_currentPage],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.camera_alt), label: 'Read'),
          NavigationDestination(
              icon: Icon(Icons.text_fields_rounded), label: 'Create')
        ],
        onDestinationSelected: (int index) {
          debugPrint(index.toString());
          setState(() {
            _currentPage = index;
          });
        },
        selectedIndex: _currentPage,
      ),
    );
  }
}
