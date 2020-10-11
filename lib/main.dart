import 'package:flutter/material.dart';

void main() {
  runApp(FlutterWidget());
}

class FlutterWidget extends StatefulWidget {
  @override
  _FlutterWidgetState createState() => _FlutterWidgetState();
}

class _FlutterWidgetState extends State<FlutterWidget> {
  var _isLoved = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Mission 1"),
              backgroundColor: Colors.red[700],
            ),
            body: Stack(
              fit: StackFit.loose,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.red[700], Colors.orange[200]],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 1.0],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                          flex: 3,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 8.0),
                            child: Image.network(
                                'https://images.unsplash.com/photo-1586428268321-8e067843a113?ixlib=rb-1.2.1&auto=format&fit=crop&w=755&q=80',
                                fit: BoxFit.fitWidth,
                                width: double.maxFinite),
                          )),
                      Flexible(
                          flex: 2,
                          fit: FlexFit.loose,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                flex: 1,
                                child: Container(
                                  height: 80,
                                  margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/image1.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  height: 80,
                                  margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/image2.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  height: 80,
                                  margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/image3.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  height: 80,
                                  margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/image4.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Flexible(
                        flex: 4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Welcome to Sport Center",
                                style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2.0),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            new Expanded(
                              child: SingleChildScrollView(
                                child: Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac varius felis, non iaculis ligula. Proin nec lectus ut ex eleifend cursus accumsan non dolor. Morbi molestie nisi sed commodo tristique. Mauris eu risus vel risus egestas porttitor a ac leo. Donec ullamcorper elit quis rutrum suscipit. Nunc molestie nisi sapien. Aliquam quis nunc sed lectus efficitur convallis vel quis dolor. Aenean a nisi posuere, egestas tellus non, imperdiet metus. Phasellus lobortis posuere pellentesque. \n\nNullam et facilisis tortor. Morbi et lacinia urna. Praesent et mauris quis nulla consequat cursus.Vestibulum porttitor lacus nec ligula accumsan vehicula. Fusce magna quam, viverra in neque vitae, interdum imperdiet tellus. Vestibulum at tortor quam. Proin rutrum lobortis rhoncus. Nunc eget vehicula nisl, a pulvinar mauris. \n\nCurabitur faucibus non risus quis vestibulum. Etiam interdum porta pellentesque. Proin congue urna in est convallis feugiat.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 2.0),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  child: Container(
                    child: FloatingActionButton(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.favorite,
                        color:
                            _isLoved == false ? Colors.grey[500] : Colors.red,
                      ),
                      onPressed: () {
                        setState(() {
                          _isLoved = _isLoved == true ? false : true;
                        });
                      },
                      elevation: 10.0,
                    ),
                  ),
                )
              ],
            )));
  }
}
