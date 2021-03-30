import 'package:flutter/material.dart';
import 'widgets/plus_one_widget.dart';
import 'widgets/minus_one_widget.dart';
import 'widgets/da_text_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  Animation<double> arrowAnimation;
  AnimationController arrowController;

  @override
  void initState() {
    arrowController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    arrowAnimation = Tween(begin: 30.0, end: 50.0).animate(
        CurvedAnimation(parent: arrowController, curve: Curves.easeInOut));

    arrowController.forward();
    arrowAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        arrowController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        arrowController.forward();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: Center(
            child: Row(
              children: [
                Flexible(fit: FlexFit.tight,flex: 2,child: MinusOneWidget(arrowAnimation: arrowAnimation)),
                Flexible(fit: FlexFit.tight,flex: 6,child: DaTextWidget()),
                Flexible(fit: FlexFit.tight,flex: 2,child: PlusOneWidget(arrowAnimation: arrowAnimation))
              ],
            ),
          ),
        ));
  }
}
