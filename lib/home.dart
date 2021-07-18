import 'package:flutter/material.dart';

class DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: Center(
        child: CustomText(text: 'Hello there !', fontSize: 25),
      ),
      drawer: _buildDrawer(),
    );
  }

  _buildDrawer() {
    return Drawer(
      child: Stack(
        children: [
          ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/drawer.jpeg"),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: Image.asset("assets/logo1.png"),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    CustomText(
                        text: 'Ana Skulj',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Row(
                      children: [
                        CustomText(
                          text: '256 Followers ',
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.8),
                        ),
                        Padding(padding: EdgeInsets.only(left: 8)),
                        Icon(
                          Icons.people_alt_outlined,
                          color: Colors.white.withOpacity(0.8),
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                title: CustomText(
                  text: "Profile",
                ),
                selectedTileColor: Colors.deepPurple.shade100,
                selected: false,
                leading: Icon(Icons.person_outline),
                onTap: () {},
              ),
              ListTile(
                  title: CustomText(text: "Messages"),
                  leading: Icon(Icons.message),
                  selectedTileColor: Colors.deepPurple.shade100,
                  selected: false,

                  onTap: () {}),
              ListTile(
                title: CustomText(text: "Activity"),
                leading: Icon(Icons.timeline_rounded),
                selectedTileColor: Colors.deepPurple.shade100,
                selected: false,
                onTap: () {},
              ),
              ListTile(
                title: CustomText(text: "Lists"),
                leading: Icon(Icons.list),
                selectedTileColor: Colors.deepPurple.shade100,
                selected: true,
                onTap: () {},
              ),
              ListTile(
                title: CustomText(text: "Reports"),
                leading: Icon(Icons.insert_chart_outlined),
                selectedTileColor: Colors.deepPurple.shade100,
                selected: false,
                onTap: () {},
              ),
              ListTile(
                title: CustomText(text: "Statistic"),
                leading: Icon(Icons.trending_up),
                selectedTileColor: Colors.deepPurple.shade100,
                selected: false,
                onTap: () {},
              ),
              ListTile(
                title: CustomText(text: "Sign Out"),
                leading: Icon(Icons.input),
                selectedTileColor: Colors.deepPurple.shade100,
                selected: false,
                onTap: () {},
              ),
              Padding(padding: EdgeInsets.only(top: 50)),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.grey,
              ),
              ListTile(
                title: CustomText(text: "Tell a Friend"),
                leading: Icon(Icons.share_outlined),
                selectedTileColor: Colors.deepPurple.shade100,
                selected: false,
                onTap: () {},
              ),
              ListTile(
                title: CustomText(
                  text: 'Help and Feedback',
                ),
                leading: Icon(Icons.help_outline),
                selectedTileColor: Colors.deepPurple.shade100,
                selected: false,
                onTap: () {},
              ),
            ],
          ),
          Positioned(
            child: CircleAvatar(
              radius: 3,
              backgroundColor: Colors.purple,
            ),
            top: 293,
            left: 36,
          ),
          Positioned(
            child: CircleAvatar(
              radius: 3,
              backgroundColor: Colors.purple,
            ),
            top: 353,
            left: 36,
          ),
        ],
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  String text;
  String fontFamily;
  double fontSize;
  Color color;
  FontWeight fontWeight;

  CustomText(
      {@required this.text,
      this.fontFamily = 'Roboto',
      this.fontSize = 16,
      this.color = Colors.black,
      this.fontWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        fontFamily: fontFamily,
      ),
    );
  }
}
