import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:open_file/open_file.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _dueDate = DateTime.now();
  DateTime _dueDate2 = DateTime.now();
  final currentDate = DateTime.now();
  Color _currentColor = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Interactive Widget"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            // build picker
            buildDatePicker(context),
            SizedBox(height: 20),
            // buildcolorpicker
            buildColorPicker(context),
            //buildFilePicker
            builFilePicker(context),
          ],
        ),
      ),
    );
  }

  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Date 1"),
            TextButton(
                onPressed: () async {
                  final selectDate = await showDatePicker(
                    context: context,
                    initialDate: currentDate,
                    firstDate: DateTime(1990),
                    lastDate: DateTime(currentDate.year + 5),
                  );

                  setState(() {
                    if (selectDate != null) {
                      _dueDate = selectDate;
                    }
                  });
                },
                child: Text("Select"))
          ],
        ),
        Text(
          DateFormat("dd-MM-yyyy").format(_dueDate),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Date 2"),
            TextButton(
              onPressed: () async {
                final selectDate2 = await showDatePicker(
                  context: context,
                  initialDate: _dueDate,
                  firstDate: _dueDate,
                  lastDate: DateTime(currentDate.year + 5),
                );

                setState(
                  () {
                    if (selectDate2 != null) {
                      _dueDate2 = selectDate2;
                    }
                  },
                );
              },
              child: Text("Select"),
            )
          ],
        ),
        Text(
          DateFormat("dd-MM-yyyy").format(_dueDate2),
        ),
      ],
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Color"),
        SizedBox(height: 10),
        Container(
          height: 100,
          width: double.infinity,
          color: _currentColor,
        ),
        SizedBox(height: 20),
        Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Pick Your Color"),
                    content: BlockPicker(
                        pickerColor: _currentColor,
                        onColorChanged: (color) {
                          setState(() {
                            _currentColor = color;
                          });
                        }),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Save"))
                    ],
                  );
                },
              );
            },
            child: Text("Pick Color"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(_currentColor)),
          ),
        )
      ],
    );
  }

  Widget builFilePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Pick File"),
        SizedBox(height: 10),
        Center(
          child: ElevatedButton(
            onPressed: () {
              _pickFile();
            },
            child: Text("Pick and Open File"),
          ),
        )
      ],
    );
  }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    final file = result.files.first;
    _openFile(file);
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }
}
