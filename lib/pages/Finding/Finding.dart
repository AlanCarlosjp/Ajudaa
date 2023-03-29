import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FindingPage extends StatefulWidget {
  const FindingPage({Key? key}) : super(key: key);

  @override
  State<FindingPage> createState() => _FindingPageSatate();
}

class _FindingPageSatate extends State<FindingPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var animacao =
      'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json';
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
                  'Estamos procurando, aguarde por favor !!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Align(
                child: Lottie.network(animacao, fit: BoxFit.fill),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
