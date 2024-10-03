import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        appBar: _getAppBar(),
        body: SafeArea(child: _getMainBody()),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      elevation: 10,
      backgroundColor: Color(0xff00b401),
      title: Text(
        'شهرام حسین زاده',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        children: [_getHeader()],
      ),
    );
  }

  Widget _getHeader() {
    return Column(
      children: [
        SizedBox(height: 20),
        CircleAvatar(
          backgroundImage: AssetImage('images/profile.jpg'),
          radius: 70,
        ),
        SizedBox(height: 10),
        Container(
          width: double.infinity,
          child: Column(
            children: [
              Text(
                'شهرامم، یه برنامه نویسی و معلم',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'عاشق برنامه نویسی موبایل، اندروید و فلاتر؛ دوست دارم هر چی که یاد میگیریم رو یاد بدم',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12),
              _getRowIcons(),
              SizedBox(height: 12),
              _getSkillCards()
            ],
          ),
        ),
      ],
    );
  }

  Widget _getRowIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.instagramSquare),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.github),
          color: Colors.blueGrey,
        ),
      ],
    );
  }

  Widget _getSkillCards() {
    var list = ['android', 'flutter', 'dart', 'kotlin', 'java'];

    return Wrap(
      children: [
        for (var skillTitle in list)
          Card(
            elevation: 10,
            shadowColor: Colors.green,
            child: Column(
              children: [
                Container(
                  height: 80.0,
                  child: Image(
                    image: AssetImage('images/$skillTitle.png'),
                    width: 60.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(skillTitle),
                )
              ],
            ),
          ),
      ],
    );
  }
}
