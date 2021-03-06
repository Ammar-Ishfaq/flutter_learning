import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toast/toast.dart';
import 'newCard.dart';

void main() {
  // runApp(MyApp());// first app
  // runApp(miniProject()); // a simle mini project
  // runApp(StackLearning());//for the stack in flutter
  // runApp(FormMain()); //for the fomrs
  // runApp(ICON());// for the top apbar icons
  // runApp(IMAGES());
  // runApp(CARD());
  // runApp(TABBAR());
  // runApp(mAlertDialog());
  // runApp(mLIST());
  // runApp(
  //     mLongList(names: List<String>.generate(50, (a) => "Hellow Coders $a")));
  // runApp(mGridList());
  // runApp(mHorizontalList());
  runApp(GridListWithToast());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material app",
      home: Scaffold(
        backgroundColor: Colors.orangeAccent, //body color
        appBar: AppBar(
          backgroundColor: Colors.amber, //appbar color
          title: Text("Title of the App 1bar"),
          leading: Icon(Icons.power),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          //cover minimum space  .max will cover the maximum space
          children: [
            Row(
              children: [
                Container(
                    height: 100,
                    width: 100,
                    color: Colors.orange,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    child: Text("Hello World")),
                Container(
                    height: 100,
                    width: 100,
                    color: Colors.orange,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    child: Text("Buy World")),
                Container(
                    height: 100,
                    width: 100,
                    color: Colors.orange,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    child: Text("Yup World"))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Text Styling with shadow",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      backgroundColor: Colors.black,
                      shadows: [
                        Shadow(color: Colors.yellow, offset: Offset(2.0, 1.0))
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.all(20),
                    child: RichText(
                      text: TextSpan(
                        text: 'Hello ',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'bold',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: ' world!'),
                        ],
                      ),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 300,
                  color: Colors.white,
                  margin: EdgeInsets.all(1),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "enter your name",
                        border: OutlineInputBorder()),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 300,
                  margin: EdgeInsets.all(1),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "enter your password",
                        border: OutlineInputBorder()),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class miniProject extends StatelessWidget {
  const miniProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material app",
      home: Scaffold(
          backgroundColor: Colors.orangeAccent, //body color
          appBar: AppBar(
            backgroundColor: Colors.amber, //appbar color
            title: Text("Title of the App 1bar"),
            leading: Icon(Icons.power),
          ),
          body: Column(
            children: [
              Center(
                  child: Container(
                margin: EdgeInsets.only(top: 30),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.orange,
                    border: Border.all(color: Colors.white, width: 1.0)),
                child: Center(
                    child: Text(
                  "S",
                  style: TextStyle(fontSize: 50, color: Colors.white),
                )),
              )),
              Container(
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Ammar",
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.person,
                            color: Colors.white,
                          )),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.lock,
                            color: Colors.purple,
                          )),
                    ),
                  )),
              //  Flat Button
              FlatButton(
                child: Text(
                  "Flat Button",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                color: Colors.white,
                textColor: Colors.orange,
              ),
              //  raised  button with two calling features longclick and short click
              RaisedButton(
                child: Text("Raised Button"),
                onPressed: () {},
                onLongPress: () {},
                color: Colors.white70,
                textColor: Colors.orange,
                splashColor: Colors.black,
              ),
              //  Floating action button
              FloatingActionButton(
                child: Text("Floating Action button"),
                onPressed: () {},
              ),
              FloatingActionButton(
                child: Icon(Icons.ac_unit),
                onPressed: () {},
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              FloatingActionButton.extended(
                onPressed: () {},
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                label: Text("Save"),
                icon: Icon(Icons.save),
              )
            ],
          )),
    );
  }
}

class StackLearning extends StatelessWidget {
  const StackLearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Stack Learning",
        home: Scaffold(
          backgroundColor: Colors.orangeAccent, //body color
          appBar: AppBar(
            backgroundColor: Colors.amber, //appbar color
            title: Text("Stack Learning a"),
            leading: Icon(Icons.star_border),
          ),
          body: Center(
            child: Stack(
              fit: StackFit.passthrough,
              overflow: Overflow.visible,
              children: [
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.deepOrange,
                  child: Center(
                    child: Text(
                      "Center Text inside Container",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Positioned(
                    top: 30,
                    right: 10,
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.black,
                      child: Text(
                        "Positioned-Text",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70),
                      ),
                    )),
                Positioned(
                    top: 30,
                    left: 10,
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.black,
                      child: Text(
                        "Left",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70),
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}

//Below Code for the making  ========>>>>>>>>>> FORM <<<<<<<<<<<<<<=============
class FormMain extends StatelessWidget {
  const FormMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Creating a New form",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Form"),
        ),
        body: FORM(),
      ),
    );
  }
}

class FORM extends StatefulWidget {
  const FORM({Key? key}) : super(key: key);

  @override
  _FORMState createState() => _FORMState();
}

class _FORMState extends State<FORM> {
  final keys = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keys,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(
                labelText: "Name",
                hintText: "Enter your name",
                icon: Icon(Icons.person)),
            validator: (value) {
              if (value!.isEmpty) {
                return "please Fill the Name";
              } else {
                return null;
              }
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your Password",
                icon: Icon(Icons.person)),
            validator: (value) {
              if (value!.isEmpty) {
                return "please Fill the Password";
              } else {
                return null;
              }
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: "Github Link",
                hintText: "Enter your Github Link",
                icon: Icon(Icons.link)),
            validator: (value) {
              if (value!.isEmpty) {
                return "please Fill the GitHubLink";
              } else {
                return null;
              }
            },
          ),
          Container(
            child: RaisedButton(
              child: Text("Submit"),
              onPressed: () {
                if (keys.currentState!.validate()) {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("Validation Going On"),
                  ));
                }
              },
            ),
          )
        ],
      ),
    );
  }
}

//END Code for the making  ========>>>>>>>>>> FORM <<<<<<<<<<<<<<=============

//Start Code of  ========>>>>>>>>>> ICONS <<<<<<<<<<<<<<=============

class ICON extends StatelessWidget {
  const ICON({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ICONS day",
      home: Scaffold(
        appBar: AppBar(
          title: Text("ICONS WIDGETS"),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.home,
                    size: 40,
                    color: Colors.black,
                    textDirection: TextDirection.rtl,
                  ),
                  Text("Home")
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.alarm,
                    size: 40,
                    color: Colors.black,
                    textDirection: TextDirection.rtl,
                  ),
                  Text("Alarm")
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.delete,
                    size: 40,
                    color: Colors.black,
                    textDirection: TextDirection.rtl,
                  ),
                  Text("Delete")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//END Code of  ========>>>>>>>>>> ICONS <<<<<<<<<<<<<<=============
//Start Code of  ========>>>>>>>>>> IMAGES <<<<<<<<<<<<<<=============

class IMAGES extends StatelessWidget {
  const IMAGES({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Image",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image WIDGETS"),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/duck.png",
                    width: 200,
                    height: 200,
                  ),
                  Text("Donald Duck"),
                  Image.network(
                    "https://www.sammobile.com/wp-content/uploads/2019/03/keyguard_default_wallpaper_silver.png",
                    width: 200,
                    height: 200,
                  ),
                  Text(
                      "Below:This Also Aplies when the network is slow\nIntenet-OFF\n* load assets image\nInternet-ON\n* load the networkImage"),
                  //  Image that take time to load from the network wil be using this:
                  FadeInImage.assetNetwork(
                    width: 150,
                    height: 150,
                    placeholder: "assets/duck.png",
                    image:
                        "https://www.sammobile.com/wp-content/uploads/2019/03/keyguard_default_wallpaper_silver.png",
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//END Code of  ========>>>>>>>>>> IMAGES <<<<<<<<<<<<<<=============
//Start Code of  ========>>>>>>>>>> CARD & DRAWER <<<<<<<<<<<<<<=============

class CARDwithDRAWER extends StatelessWidget {
  const CARDwithDRAWER({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Card",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Card WIDGETS"),
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(8.0),
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("ammar"),
                accountEmail: Text("ammarishfaq25@gmail.com"),
                currentAccountPicture: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: AssetImage("assets/duck.png"),
                          fit: BoxFit.fill)),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("HOME"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Profile"),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              height: 200,
              width: 300,
              child: Card(
                color: Colors.white60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.person_pin,
                          color: Colors.black,
                          size: 30,
                        ),
                        title: Text("Ammar Ishfaq",
                            style:
                                TextStyle(fontSize: 25, color: Colors.black)),
                        subtitle: Text("+923234164199",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                    ButtonBar(
                      children: [
                        RaisedButton(
                          child: Text(
                            "Contact",
                          ),
                          color: Colors.black,
                          onPressed: () {
                            HOME_PAGE();
                          },
                        ),
                        RaisedButton(
                          child: FloatingActionButton.extended(
                            label: Text("Location"),
                            icon: Icon(Icons.location_on),
                            backgroundColor: Colors.transparent,
                            onPressed: () {},
                          ),
                          color: Colors.black,
                          onPressed: () {},
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//END Code of  ========>>>>>>>>>> CARD & DRAWER <<<<<<<<<<<<<<=============
//Start Code of  ========>>>>>>>>>> TAB-BAR <<<<<<<<<<<<<<=============

class TABBAR extends StatelessWidget {
  const TABBAR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TOPAPP BAR ",
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar"),
            backgroundColor: Colors.black,
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.picture_as_pdf),
                  text: "NewsFeed",
                ),
                Tab(
                  icon: Icon(Icons.account_circle),
                  text: "Profile",
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [HOME_PAGE(), NEWSFEED_PAGE(), PROFILE_PAGE()],
          ),
        ),
      ),
    );
  }
}

//END Code of  ========>>>>>>>>>> TAB-BAR <<<<<<<<<<<<<<=============

//Start Code of  ========>>>>>>>>>> Pages <<<<<<<<<<<<<<=============

class HOME_PAGE extends StatelessWidget {
  const HOME_PAGE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "HOME",
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}

class NEWSFEED_PAGE extends StatelessWidget {
  const NEWSFEED_PAGE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "NEWS",
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}

class PROFILE_PAGE extends StatelessWidget {
  const PROFILE_PAGE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "PROFILE",
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
//END Code of  ========>>>>>>>>>> Pages <<<<<<<<<<<<<<=============

//Start Code of  ========>>>>>>>>>> AlertDialog <<<<<<<<<<<<<<=============
class mAlertDialog extends StatelessWidget {
  const mAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AlertWidget(),
    );
  }
}

class AlertWidget extends StatelessWidget {
  TextEditingController _textEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("Basic AlertDialog"),
            onPressed: () async {
              // simpleAlertDialogWidget(context);
              // inputAlertDialogWidget(context, _textEditingController);

              //for the confirmation below is the code
              // final field fieldetale = await confirmAlertDialogWidget(context);
              // print("User Selected $fieldetale");

              //  FOR SELECTING LANGUAGES THE
              final Future<selectLanguage?> options =
                  await selectAlertDialogWidget(context);
              print(options);
            },
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

simpleAlertDialogWidget(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Basic"),
          content: Text("This is the for the notification view"),
          actions: [
            RaisedButton(
              child: Text("OK"),
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      });
}

inputAlertDialogWidget(BuildContext context, TextEditingController controller) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Name"),
          content: TextField(
            decoration: InputDecoration(hintText: "Enter Your Name"),
            controller: controller,
          ),
          actions: [
            RaisedButton(
              child: Text("OK"),
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      });
}

enum field { cancel, Accept }

Future<Future<field?>> confirmAlertDialogWidget(BuildContext context) async {
  return showDialog<field>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirmation"),
          content: Text("Future Purpose Notification"),
          actions: [
            RaisedButton(
              child: Text("Cancel"),
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pop(field.cancel);
              },
            ),
            RaisedButton(
              child: Text("Accept"),
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pop(field.Accept);
              },
            )
          ],
        );
      });
}

enum selectLanguage { JAVA, C, PYTHON, PHP }

Future<Future<selectLanguage?>> selectAlertDialogWidget(
    BuildContext context) async {
  return showDialog<selectLanguage>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("Choose Langauge"),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(selectLanguage.JAVA);
              },
              child: Text("JAVA"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(selectLanguage.PYTHON);
              },
              child: Text("PYTHON"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(selectLanguage.C);
              },
              child: Text("C"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(selectLanguage.PHP);
              },
              child: Text("PHP"),
            ),
          ],
        );
      });
}

//END Code of  ========>>>>>>>>>> AlertDialog <<<<<<<<<<<<<<=============

//START  Code of  ========>>>>>>>>>>  List <<<<<<<<<<<<<<=============
//START  Code of  ========>>>>>>>>>> BASIC List <<<<<<<<<<<<<<=============

class mLIST extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Basic List"),
            ),
            body: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text("Contact"),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("Profile"),
                  trailing: Icon(Icons.ac_unit),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                ),
              ],
            )));
  }
}
//END  Code of  ========>>>>>>>>>> BASIC List <<<<<<<<<<<<<<=============

//START  Code of  ========>>>>>>>>>> LONG List <<<<<<<<<<<<<<=============

class mLongList extends StatelessWidget {
  final List<String> names;

  mLongList({Key? key, required this.names}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Long List"),
            ),
            body: ListView.builder(
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text("Hii ${names[index]}"));
                })));
  }
}
//END  Code of  ========>>>>>>>>>> LONG List <<<<<<<<<<<<<<=============

//START  Code of  ========>>>>>>>>>> GRID List <<<<<<<<<<<<<<=============

class mGridList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("GRID List"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(datas.length, (index) {
          return newCard(
            datas: datas[index],
          );
        }),
      ),
    ));
  }
}

class data {
  const data({required this.title, required this.icon});

  final String title;
  final IconData icon;
}

List<data> datas = <data>[
  const data(title: "home", icon: Icons.home),
  const data(title: "profile", icon: Icons.account_circle),
  const data(title: "setting", icon: Icons.settings),
  const data(title: "call", icon: Icons.call),
  const data(title: "callender", icon: Icons.calendar_today),
  const data(title: "logout", icon: Icons.exit_to_app),
  const data(title: "home", icon: Icons.home),
  const data(title: "profile", icon: Icons.account_circle),
  const data(title: "setting", icon: Icons.settings),
  const data(title: "call", icon: Icons.call),
  const data(title: "callender", icon: Icons.calendar_today),
  const data(title: "logout", icon: Icons.exit_to_app)
];
//END  Code of  ========>>>>>>>>>> Grid List <<<<<<<<<<<<<<=============

//Start  Code of  ========>>>>>>>>>> Horizontal List <<<<<<<<<<<<<<=============
class mHorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Horizontal List"),
      ),
      body: SizedBox(
        height: 150.0,
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(datas.length, (index) {
              return Container(
                width: 148.0,
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                child: Center(
                  child: ListTile(
                    leading: Icon(datas[index].icon),
                    title: Text(datas[index].title),
                  ),
                ),
              );
            })),
      ),
    ));
  }
}

//END  Code of  ========>>>>>>>>>> Horizontal List <<<<<<<<<<<<<<=============

//END  Code of  ========>>>>>>>>>>  List <<<<<<<<<<<<<<=============
//Start  Code of  ========>>>>>>>>>>  Grid View With Toast <<<<<<<<<<<<<<=============
List<String> images = [
  "https://www.publicdomainpictures.net/pictures/280000/nahled/not-found-image-15383864787lu.jpg",
  "https://www.publicdomainpictures.net/pictures/280000/nahled/not-found-image-15383864787lu.jpg",
  "https://www.publicdomainpictures.net/pictures/280000/nahled/not-found-image-15383864787lu.jpg",
  "https://www.publicdomainpictures.net/pictures/280000/nahled/not-found-image-15383864787lu.jpg",
  "https://www.publicdomainpictures.net/pictures/280000/nahled/not-found-image-15383864787lu.jpg",
  "https://image.shutterstock.com/image-vector/404-error-page-not-found-260nw-603779531.jpg",
  "https://image.shutterstock.com/image-vector/flat-icon-on-off-toggle-260nw-1543135007.jpg"
];



class GridListWithToast extends StatelessWidget {
  const GridListWithToast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("GRID List With Toast"),
      ),
      body: Column(
        children: [
          GridView.builder(
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.network(images[index], fit: BoxFit.cover));
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 18.0),
          ),
        ],
      ),
    ));
  }
}

// body: GridView.builder(gridDelegate: images.length,
// itemBuilder: (BuildContext context, int index))
// {
// return Image.network();
// },
