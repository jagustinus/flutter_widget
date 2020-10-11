import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final _formkey = GlobalKey<FormState>();
  final fullnameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Booking Form"),
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 100,
            ),
            child: IntrinsicHeight(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: TextFormField(
                          controller: fullnameController,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "This field can't be blank";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.account_circle),
                            labelText: 'Full Name',
                            hintText: "Your Full Name",
                            border:
                                OutlineInputBorder(borderSide: BorderSide()),
                          ),
                        ),
                      ),
                      Container(
                        child: TextFormField(
                          controller: emailController,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "This field can't be blank";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            labelText: 'E-mail Address',
                            hintText: "Your Email Adress",
                            border:
                                OutlineInputBorder(borderSide: BorderSide()),
                          ),
                        ),
                      ),
                      Container(
                        child: TextFormField(
                          controller: phoneController,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "This field can't be blank";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone_iphone),
                            labelText: 'Phone Number',
                            hintText: "Your Phone Number",
                            border:
                                OutlineInputBorder(borderSide: BorderSide()),
                          ),
                        ),
                      ),
                      Container(
                        child: TextFormField(
                          controller: cityController,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "This field can't be blank";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.location_city),
                            labelText: 'City',
                            hintText: "Your City",
                            border:
                                OutlineInputBorder(borderSide: BorderSide()),
                          ),
                        ),
                      ),

                      // Button
                      Padding(
                          padding:
                              EdgeInsets.only(top: 40, right: 120, left: 120),
                          child: Container(
                            child: RaisedButton(
                                onPressed: () {
                                  if (_formkey.currentState.validate()) {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext contex) {
                                          return showBookingConfirmation();
                                        });
                                  } else {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return showValidation();
                                        });
                                  }
                                  return false;
                                },
                                textColor: Colors.white,
                                color: Colors.blue,
                                padding: const EdgeInsets.all(0.0),
                                child: Container(
                                    padding: EdgeInsets.only(
                                        left: 16,
                                        right: 16,
                                        top: 12,
                                        bottom: 12),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Icon(Icons.save),
                                        Text("Book Now")
                                      ],
                                    ))),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  showValidation() {
    return new AlertDialog(
      title: Text("Booking Failed"),
      content: Text("Please fill all form field !"),
      actions: <Widget>[
        FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("OK"))
      ],
    );
  }

  showBookingConfirmation() {
    return new AlertDialog(
      title: Text("Booking Confirmation"),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text("Name : " + fullnameController.text),
            Text("Email : " + emailController.text),
            Text("Phone : " + phoneController.text),
            Text("City : " + cityController.text),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            child: Text("OK"))
      ],
    );
  }
}
