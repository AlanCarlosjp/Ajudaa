import 'package:ajudaa/pages/Home/HomeModel.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                Color.fromRGBO(75, 57, 239, 1),
                Color.fromARGB(255, 223, 223, 223)
              ],
                  stops: [
                0,
                1
              ],
                  begin: AlignmentDirectional(0, -1),
                  end: AlignmentDirectional(0, 1))),
          alignment: AlignmentDirectional.center,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0, -0.65),
                child: Text(
                  'Aperte para pedir ajuda !!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Align(
                child: FloatingActionButton.large(
                  onPressed: () {
                    print('Apertado');
                  },
                  child: Icon(
                    Icons.notifications_active_outlined,
                    size: 70,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
