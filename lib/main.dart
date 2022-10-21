import 'package:flutter/material.dart';
import 'package:formatif_intra_flutter/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
var scaffoldKey = GlobalKey<ScaffoldState>();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back), onPressed: () {scaffoldKey.currentState?.openDrawer();},
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Column(
          children: <Widget>[
            Expanded(
              flex:2,
              child:
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child:
                    Container(// Ca prend un container pour les bordures et les marges
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.red,
                        child: Text("Je prends 1/2"),
                    )
                ),
                Expanded(
                    flex: 2,
                    child:
                    Container(// Ca prend un container pour les bordures et les marges
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.blue,
                        child: Text("Je prends 1/3"),
                    )
                ),
                Expanded(
                    flex: 1,
                    child:
                    Container(// Ca prend un container pour les bordures et les marges
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.orange,
                        child: Text("Je prends 1/6"),
                    ),
                ),
              ],
            ),
            ),
            /*Expanded(
              flex: 1,
              child:
              Container(
              color: Colors.red,
              ),
            ),*/
            Expanded(
              flex: 1,
              child:
              Container(
                color: Colors.amberAccent,
              ),
            ),
          ],
      ),

      floatingActionButton: FloatingActionButton(

        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondRoute()),
          );
        },
      ),

    );
  }
}
