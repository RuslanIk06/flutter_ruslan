import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String response = '';
  List<Map<String, dynamic>> _listDataMap = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Task Example',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () async {
                final dio = Dio();
                final baseUrl = "https://reqres.in/api/users";
                final res = await dio.get(baseUrl);

                final listMap = List<Map<String, dynamic>>.from(
                  res.data['data'].map(
                    (dataApi) => {
                      'email': dataApi['email'].toString(),
                      'firstName': dataApi['first_name'].toString(),
                      'lastName': dataApi['last_name'].toString(),
                      'avatar': dataApi['avatar'].toString(),
                    },
                  ),
                );

                setState(() {
                  _listDataMap = listMap;
                });
              },
              child: const Text(
                'GET',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final user = _listDataMap[index];
                  return ListTile(
                    leading: CircleAvatar(
                      child: Image.network(user['avatar']),
                    ),
                    title: Text(
                        '${user['firstName'].toString()} ${user['lastName'].toString()}'),
                    subtitle: Text(user['email']),
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
                itemCount: _listDataMap.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
