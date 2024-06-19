// ignore_for_file: library_private_types_in_public_api, unused_local_variable

import 'dart:ui';

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    //  loadcategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: false,
        title: const Text(
          "APP BAR ",
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.bold, color: Color.fromARGB(242, 255, 255, 255)),
        ),
        actions: [
          AnimSearchBar(
            width: 250,
            textController: textController,
            onSuffixTap: () {
              setState(() {
                textController.clear();
              });
            },
            // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
            onSubmitted: (String) {},
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          child: Column(
            children: [
              Container(
                width: 300,
                height: 300,
                alignment: Alignment.center,
                child: const Text("Imagen"),
              ),
              const Divider(),
              Container(
                width: 300,
                alignment: Alignment.center,
                child: const Text("Contenido"),
              )
            ],
          ),
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          },
        ),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            //decoration: BoxDecoration(border: Border.all(width: 0, color: Colors.amber)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Mi Pantalla\n',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white30),
                        ),
                        TextSpan(
                          text: 'Menu de usuario',
                          style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 201, 200, 200)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("sasas"),
                  trailing: Icon(Icons.send),
                ),
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("sasas"),
                  trailing: Icon(Icons.send),
                ),
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("sasas"),
                  trailing: Icon(Icons.send),
                ),
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("sasas"),
                  trailing: Icon(Icons.send),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
