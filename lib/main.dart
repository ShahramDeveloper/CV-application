import 'package:flutter/material.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: getAppBar(),
        body: SafeArea(child: Text('شهرام آکادمی')),
      ),
    );
  }
}

PreferredSizeWidget getAppBar() {
  return AppBar(
    elevation: 10,
    backgroundColor: Colors.green,
    title: Text(
      'شهرام حسین زاده',
      style: TextStyle(color: Colors.white),
    ),
  );
}
