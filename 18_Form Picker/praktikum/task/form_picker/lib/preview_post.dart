import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PreviewPage extends StatefulWidget {
  String submited;
  Color warna;
  String caption;

  PreviewPage(this.submited, this.warna, this.caption, {super.key});

  @override
  State<PreviewPage> createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Preview Post"),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                color: widget.warna,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Published :  ${widget.submited}"),
                  Row(
                    children: [
                      const Text("Color"),
                      const SizedBox(width: 10),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: widget.warna,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text(
                widget.caption,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
