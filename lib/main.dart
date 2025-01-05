import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import './myprofile.dart' show Myprofile;

<<<<<<< HEAD
void main() {
  runApp(const MyApp()); //Display widget on screen
=======
main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

  runApp(const MyApp());//Display widget on screen
>>>>>>> 256c2aa0619ad9bc97452e3ee96d5f03688e89e0
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

//StatlessWidget: no change in state while running
//No redraw interface
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //MaterialApp class: Material design
    return MaterialApp(
      title: 'My Profile app',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Welcome to My Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  final String _saying = "What comes around will turn arround !";
  String test = Myprofile().getMyProfile();
  Myprofile mypro = Myprofile();

  static const Map<String, Color> _colors = <String, Color>{
    'Library Management': Colors.pinkAccent,
    'Tasks': Colors.transparent,
  };

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      // _counter++;
    });
  }

  void _setProfile() {
    setState(() {
      mypro.setMyProfile('1/1/2005', 'Phenikaa University', 'Lecturer');
      mypro.setMyProfile('1/2/2005', 'Phenikaa University', 'Lecturer');
      mypro.setMyProfile('1/3/2005', 'Phenikaa University', 'Lecturer');
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    _setProfile();

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    //Trien khai bo cuc hinh anh material design co ban
    //Cung cap nhieu widget or api cho ung dung
    //Drawer, SnackBar,
    //BottomNavigation,
    //AppBar, FloatingActionButton
    //
    return Scaffold(
      //Mot thanh ngang
      //Hien thi tren cung Widget Scaffold
      //Tuy chinh, do cao tieu de do sang
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      //Body: Phan chinh, hien thi noi dung Scaffold
      //Hien thi duoi appBar
      //sau floatActionButton va Drawer
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*const Text(
             // 'You have pushed the button this many times:',
            ),*/

            /* Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),*/

            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                'https://lethunguyen.github.io/MobileDev/demo/nglthu2.png',
                width: width * 0.99,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                color: HexColor.fromHex('#e9f5f8'),
                width: width * 0.95,
                height: width * 0.10,
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Text('$_saying'),
                    Text('$test'),
                  ],
                )),
            Container(
              color:  Colors.amber,
              width: width * 0.95,
              height: width * 0.90,
              alignment: Alignment.topCenter,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: 300,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: Colors.amber,
                      child: Center(child: Text('$test')),
                    );
                  }),
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),

      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "About", icon: Icon(Icons.next_plan)),
        BottomNavigationBarItem(
            label: "Contact", icon: Icon(Icons.contact_mail)),
      ]),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
