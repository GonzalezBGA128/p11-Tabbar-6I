import 'package:flutter/material.dart';

void main() => runApp(AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo Tabbar Grecia Gonzalez",
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MiPaginaInicial(),
    );
  }
} //fin AppMiTabBar

//Stateful
class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} //MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tabbar Grecia Gonzalez"),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(text: "Skincare", icon: Icon(Icons.face)),
            Tab(text: "Cabello", icon: Icon(Icons.favorite)),
            Tab(text: "Makeup", icon: Icon(Icons.add_box)),
            Tab(text: "Contacto", icon: Icon(Icons.add_call))
          ] //fin tabs
              ), //fin bottomTabBar
        ),
        body: TabBarView(children: const <Widget>[
          Center(
            child: Text(
              "Agua de rosas",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "Shampoo en barra",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "Base de maquillaje",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "6568277079",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ] //Jardin de niños
            ), //fin TabBarView
      ), //fin de Scaffold
    ); //DefaultTabController
  } //fin widget
} //_MiPagionaInicial
