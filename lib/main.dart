import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'setup Firebase';
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage(
          title: 'Jedi',
        ),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controllername = TextEditingController();
  final controllerage = TextEditingController();
  final controllerjedilocation = TextEditingController();
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Add Name Jedi'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          TextField(
            decoration: InputDecoration(hintText: "Jedi name"),
            controller: controllername,
          ),
          const SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(hintText: "Jedi age"),
            controller: controllerage,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(hintText: "Jedi's location"),
            controller: controllerjedilocation,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
              child: Text('Add'),
              onPressed: () {
                final jedi = Jedi(
                    name: controllername.text,
                    age: controllerage.text,
                    location: controllerjedilocation.text);
                CreateJedi(jedi);
              })
        ],
      )
      /*body:StreamBuilder<List<Jedi>>(
          stream: readJedi(),
          builder: (Jedi,(context, snapshot) => ),
        )*/
      );
  //Stream<List<Jedi>> ReadJedi() => FirebaseFirestore.instance
  // .collection('jedi')
  //.snapshots()
  // .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
  /* Stream<List<Jedi>> readJedi() => FirebaseFirestore.instance
      .collection('jedi')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => Jedi.fromJson(doc.data())).toList());*/
  Future CreateJedi(Jedi jedi) async {
    final docJedi = FirebaseFirestore.instance.collection('jedi').doc();

    final json = jedi.toJson();
    await docJedi.set(json);
  }
}

class Jedi {
  final String name;
  final String age;
  final String location;

  Jedi({required this.name, required this.age, required this.location});
  Map<String, dynamic> toJson() =>
      {'name': name, 'age': age, 'location': location};
}
