import 'package:http/http.dart' as http;
import 'package:counter_7/main.dart';
import 'package:counter_7/model/watch_list.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/add.dart';
import 'package:counter_7/page/detail.dart';
import 'dart:convert';

class DetailPage extends StatefulWidget {
  const DetailPage(
      {Key? key,
      required this.title,
      required this.have_watched,
      required this.rating,
      required this.release,
      required this.review});

  final title;
  final have_watched;
  final rating;
  final release;
  final review;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(widget.title),
        ),
      ),
    );
  }
}
