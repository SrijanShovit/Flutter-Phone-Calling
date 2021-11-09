import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/state_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone call"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 200),
            child: ElevatedButton(
              child: Text("Call"),
              onPressed: () {
                //for copyiing phone no to dialer
                // launch('tel:9431003166');

                //to directly call on the mobile number
                FlutterPhoneDirectCaller.callNumber("9431003166");
              },
            ),
          ),
        ),
      ),
    );
  }
}

mixin HomeController {}
