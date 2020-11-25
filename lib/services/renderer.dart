import 'dart:convert';

import 'package:code_gen/data/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Renderer extends StatefulWidget {
  @override
  _RendererState createState() => _RendererState();
}

class _RendererState extends State<Renderer> {
  API ren;

  @override
  void initState() {
    super.initState();
    ren = API.create();
  }

  @override
  void dispose() {
    super.dispose();
    ren.dispose();
  }

  Widget Ren(res) {
    print(res.data.body);
    Map resmap = jsonDecode(res.data.bodyString);
    List cols = resmap['col'];
    bool scroll = resmap['scroll'];
    print('reached here');
    List<RichText> colChildren = [];
    for (int i = 0; i < cols.length; i++) {
      List<TextSpan> rowChildren = [];
      print('recahed here 2');
      cols[i]['row'].forEach((rowData) => {
            print(
                'reached here 3, also here\'s your info ${rowData['size'].runtimeType}'),
            rowChildren.add(TextSpan(
                text: rowData['text'],
                style: TextStyle(
                    fontSize: rowData['size'] * 1.0,
                    fontStyle:
                        rowData['style'] ? FontStyle.italic : FontStyle.normal,
                    color: Colors.black,
                    fontWeight:
                        rowData['bold'] ? FontWeight.bold : FontWeight.normal)))
          });
      print('reached here 4');
      colChildren.add(RichText(text: TextSpan(children: rowChildren)));
    }
    return scroll
        ? SingleChildScrollView(
            child: Column(
              children: colChildren,
            ),
          )
        : Column(
            children: colChildren,
          );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) => snapshot.hasData
          ? Ren(snapshot)
          : Center(
              child: CircularProgressIndicator(),
            ),
      future: ren.getter(),
    );
  }
}
