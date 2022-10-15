import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerJob = TextEditingController();

  var result = "";
  final baseUrl = "https://reqres.in/api/users";

  getData() async {
    var dio = Dio();
    var res = await dio.get(baseUrl);

    result = jsonEncode(res.data);
  }

  postData() async {
    var dio = Dio();

    var dataMap = {
      'name': _controllerName.text,
      'job': _controllerJob.text,
    };

    final res = await dio.post(baseUrl, data: dataMap);

    result = jsonEncode(res.data);
  }

  putData() async {
    var dio = Dio();

    var dataMap = {
      'name': _controllerName.text,
      'job': _controllerJob.text,
    };

    final res = await dio.put("$baseUrl/4", data: dataMap);

    result = jsonEncode(res.data);
  }

  deleteData() async {
    var dio = Dio();
    var res = await dio.delete("$baseUrl/4");

    result = jsonEncode(res.data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task JSON"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("nama"),
                      hintText: "Input Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.length < 10) {
                        return 'Please input a valid name';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    controller: _controllerName,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Job"),
                      hintText: "Input Job",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.length < 10) {
                        return 'Please input a valid job';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    controller: _controllerJob,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            getData();
                          });
                        },
                        child: const Text("GET"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            postData();
                          });
                        },
                        child: const Text("POST"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            putData();
                          });
                        },
                        child: const Text("PUT"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            deleteData();
                          });
                        },
                        child: const Text("DELETE"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text("Result : $result")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
