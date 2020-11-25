import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:code_gen/data/chopper.dart';
import 'package:code_gen/services/renderer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      builder: (_) => API.create(),
      dispose: (_, API service) => service.dispose(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Chopper test'),
          ),
          body: Center(child: Fut()),
        ),
      ),
    );
  }
}

class Fut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return FutureBuilder<Response>(
    //   future: Provider.of<API>(context).getter(),
    //   builder: (context, snapshot) {
    //     if (snapshot.hasData) {
    //       final List data =
    //           jsonDecode(snapshot.data.bodyString)['col'][0]['row'];
    //       return ListView.builder(
    //         itemCount: data.length,
    //         itemBuilder: (context, index) {
    //           print(data);
    //           return Center(child: Text('Done'));
    //         },
    //       );
    //     } else {
    //       return Center(
    //         child: CircularProgressIndicator(),
    //       );
    //     }
    //   },
    // );
    return Renderer();
  }
}
