import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toast/toast.dart';
import 'newCard.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';

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
  // runApp(GridListWithToast());
  // runApp(CheckBoxAndRadioButton());
  // runApp(LinearProgressBar());
  // runApp(SnackBarDemo());
  // runApp(ToolTip_());
  // runApp(Slider_());
  // runApp(ImageSlider());
  runApp(SwitchWidget());
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
  "https://image.shutterstock.com/image-vector/404-error-page-not-found-260nw-603779531.jpg",
  "https://image.shutterstock.com/image-vector/flat-icon-on-off-toggle-260nw-1543135007.jpg",
  "https://image.shutterstock.com/image-vector/flat-icon-on-off-toggle-260nw-1543135007.jpg",
  "https://image.shutterstock.com/image-vector/flat-icon-on-off-toggle-260nw-1543135007.jpg",
  "https://image.shutterstock.com/image-vector/flat-icon-on-off-toggle-260nw-1543135007.jpg",
  "https://image.shutterstock.com/image-vector/flat-icon-on-off-toggle-260nw-1543135007.jpg",
  "https://image.shutterstock.com/image-vector/flat-icon-on-off-toggle-260nw-1543135007.jpg",
  "https://image.shutterstock.com/image-vector/flat-icon-on-off-toggle-260nw-1543135007.jpg",
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
      body: GridView.builder(
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) => SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            margin: const EdgeInsets.all(8.0),
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("ciao"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // add this
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.network(images[index],
                          width: 75, height: 75, fit: BoxFit.fill),
                    ),
                    const ListTile(
                      title: Text('Pub 1'),
                      subtitle: Text('Location 1'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 8.0, crossAxisSpacing: 18.0),
      ),
    ));
  }
}
// body: GridView.builder(gridDelegate: images.length,
// itemBuilder: (BuildContext context, int index))
// {
// return Image.network();
// },

class CheckBoxAndRadioButton extends StatefulWidget {
  const CheckBoxAndRadioButton({Key? key}) : super(key: key);

  @override
  _CheckBoxAndRadioButtonState createState() => _CheckBoxAndRadioButtonState();
}

enum Gender { MALE, FEMALE, OTHER }

class _CheckBoxAndRadioButtonState extends State<CheckBoxAndRadioButton> {
  bool firstValue = false;
  bool secondValue = true;
  bool thirdValue = false;

  bool checkBoxListValue = false;
  Gender gender = Gender.MALE;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("CheckBox and Radio Button Stateful"),
            ),
            body: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text("Hobby:"),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("Painting"),
                      Checkbox(
                          value: firstValue,
                          onChanged: (newValue) {
                            setState(() {
                              firstValue = newValue!;
                            });
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("Singing"),
                      Checkbox(
                          value: secondValue,
                          onChanged: (newValue) {
                            setState(() {
                              secondValue = newValue!;
                            });
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("Reading Books"),
                      Checkbox(
                          value: thirdValue,
                          onChanged: (newValue) {
                            setState(() {
                              thirdValue = newValue!;
                            });
                          }),
                    ],
                  ),
                  CheckboxListTile(
                      title: const Text("Hey What's up"),
                      subtitle: const Text("Fine!!!"),
                      secondary: Icon(Icons.call),
                      value: checkBoxListValue,
                      onChanged: (newValue) {
                        setState(() {
                          checkBoxListValue = newValue!;
                        });
                      }),
                  ListTile(
                    leading: Radio(
                      value: Gender.MALE,
                      groupValue: gender,
                      onChanged: (newValue) {
                        setState(() {
                          gender = newValue as Gender;
                        });
                      },
                    ),
                    title: const Text("Male"),
                  ),
                  ListTile(
                    leading: Radio(
                      value: Gender.FEMALE,
                      groupValue: gender,
                      onChanged: (newValue) {
                        setState(() {
                          gender = newValue as Gender;
                        });
                      },
                    ),
                    title: const Text("Female"),
                  ),
                  ListTile(
                    leading: Radio(
                      value: Gender.OTHER,
                      groupValue: gender,
                      onChanged: (newValue) {
                        setState(() {
                          gender = newValue as Gender;
                        });
                      },
                    ),
                    title: const Text("Other"),
                  )
                ],
              ),
            )));
  }
}

/////----- progressBar and snackBar
//button style
final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.black87,
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);

class LinearProgressBar extends StatefulWidget {
  const LinearProgressBar({Key? key}) : super(key: key);

  @override
  _LinearProgressBar createState() => _LinearProgressBar();
}

class _LinearProgressBar extends State<LinearProgressBar> {
  bool loadingLinear = false;
  bool loadingCircular = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("CheckBox and Radio Button Stateful"),
            ),
            body: Center(
              child: Column(
                children: [
                  Container(
                    child: loadingLinear
                        ? const LinearProgressIndicator()
                        : const Text("Click to download "),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {
                      setState(() {
                        loadingLinear = !loadingLinear;
                      });
                    },
                    child: const Text('Download with linear progress bar'),
                  ),
                  Container(
                    child: loadingCircular
                        ? CircularProgressBar_()
                        : const Text("Click to download"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {
                      setState(() {
                        loadingCircular = !loadingCircular;
                      });
                    },
                    child: const Text('Download with CIRCULAR progress bar'),
                  )
                ],
              ),
            )));
  }
}

class CircularProgressBar_ extends StatelessWidget {
  bool loading = false;
  String buttonText = "Click to download";

  CircularProgressBar_({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const CircularProgressIndicator(
        strokeWidth: 2,
      ),
    );
  }
}

class SnackBarDemo extends StatelessWidget {
  // const SnackBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar Demo'),
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  // const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar'),
      ),
    );
  }
}

class ToolTip_ extends StatelessWidget {
  // const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToolTip',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('ToolTip'),
          ),
          body: Center(
            child: Tooltip(
              waitDuration: const Duration(seconds: 2),
              showDuration: const Duration(seconds: 3),
              textStyle: const TextStyle(
                fontSize: 14,
                color: Colors.blue,
              ),
              decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadiusDirectional.circular(20)),
              message: 'Set Alarm',
              child: IconButton(
                iconSize: 70.0,
                icon: const Icon(
                  Icons.alarm_add,
                ),
                onPressed: () {
                  /* your code */
                },
              ),
            ),
          )),
    );
  }
}

class Slider_ extends StatefulWidget {
  const Slider_({Key? key}) : super(key: key);

  @override
  State<Slider_> createState() => _Slider_State();
}

class _Slider_State extends State<Slider_> {
  int _value = 6;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("SliderDemo"),
            ),
            body: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(9),
                  child: Icon(
                    Icons.volume_up,
                    size: 35,
                  ),
                ),
                Expanded(
                    child: Slider(
                  label: "Set Up Volume",
                  activeColor: Colors.green,
                  inactiveColor: Colors.red,
                  value: _value.toDouble(),
                  max: 20,
                  min: 5,
                  onChanged: (double value) {
                    setState(() {
                      _value = value.toInt();
                    });
                  },
                ))
              ],
            )));
  }
}

// class ImageSlider extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: const Text("Image Slider"),
//       ),
//       body: Container(
//           margin: const EdgeInsets.all(5),
//           padding: const EdgeInsets.all(5),
//           child: imageSlider(context)),
//     ));
//   }
// }
//
// Swiper imageSlider(BuildContext context) => Swiper(
//     itemCount: 5,
//     autoplay: true,
//     itemBuilder: (BuildContext context, int index) {
//       return Image.network(images[index],
//       fit: BoxFit.cover,);
//     });

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({Key? key}) : super(key: key);

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool switchValue = false;
  var textSwitch = "Switch is Off";

  void displayState() {
    if (switchValue) {
      textSwitch = "Switch is On";
    } else {
      textSwitch = "Switch is Off";
    }
    switchValue = !switchValue;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("TableLayoutAndSwitchBtn"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Transform.scale(
                scale: 2,
                child: Switch(

                  onChanged: (bool value) {
                    setState(() {
                      displayState();
                    });
                  },
                  value: switchValue,
                  inactiveThumbColor: Colors.red,
                  inactiveTrackColor: Colors.black,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.amber,
                ),
              ),
            ),
            Text(textSwitch)
          ],
        ),
      ),
    ));
  }
}
