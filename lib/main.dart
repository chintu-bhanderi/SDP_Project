import 'package:flutter/material.dart';
import 'scientificCalculator.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

// StatelessWidget - The widgets whose state can not be altered once they are built are called stateless widgets. These widgets are immutable once they are built i.e any amount of change in the variables, icons, buttons, or retrieving data can not change the state of the app
class MyApp extends StatelessWidget {
  // This widget is the root of this application.
  @override
  // widget - one type of div in tree
  // build - The build method is called any time you call setState , your widget's dependencies update, or any of the parent widgets are rebuilt (when setState is called inside of those). Your widget will depend on any InheritedWidget you use, e.g. Theme. of(context) , MediaQuery. of(context) etc. 
  // BuildContext - BuildContext class Null safety. A handle to the location of a widget in the widget tree. This class presents a set of methods that can be used from StatelessWidget. build methods and from methods on State objects. BuildContext objects are passed to WidgetBuilder functions (such as StatelessWidget.
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scientific Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Color(0xff000000),
        primarySwatch: Colors.pink,
      ),

      home: ScientificCalculator(),
    );

  }
}

class MerApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MerApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      backgroundColor: Colors.black,
      image: Image.asset("assets/load.gif"),
      photoSize: 150,
      loaderColor: Colors.black,
      navigateAfterSeconds: ScientificCalculator(),
    );

  }









}