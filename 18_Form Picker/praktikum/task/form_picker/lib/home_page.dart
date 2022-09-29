import 'package:flutter/material.dart';
import 'package:form_picker/custom_color.dart';
import 'package:form_picker/preview_post.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:open_file/open_file.dart';
import 'package:file_picker/file_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  final TextEditingController _dueDate = TextEditingController();
  final _colorController = TextEditingController();
  Color _currentColor = Colors.orange;
  TextEditingController _textEditingController = TextEditingController();

  String caption = "";

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Post"),
        centerTitle: true,
        backgroundColor: greyColor,
      ),
      drawer: Drawer(),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                builFilePicker(context),
                const SizedBox(height: 20),
                buildDatePicker(context),
                const SizedBox(height: 20),
                buildColorPicker(context),
                const SizedBox(height: 20),
                const Text("Caption"),
                const SizedBox(height: 10),
                TextField(
                  maxLines: 4,
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      var push = Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PreviewPage(
                            _dueDate.text,
                            _currentColor,
                            _textEditingController.text,
                          ),
                        ),
                      );
                    },
                    child: Text("Simpan"),
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor:
                          const MaterialStatePropertyAll<Color>(Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Publish At"),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
              hintText: "dd/MM/yyyy",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
          controller: _dueDate,
          onTap: () async {
            final selectDate = await showDatePicker(
              context: context,
              initialDate: currentDate,
              firstDate: DateTime(1990),
              lastDate: DateTime(currentDate.year + 5),
            );
            setState(
              () {
                if (selectDate != null) {
                  _dueDate.text = DateFormat("dd/MM/yyyy").format(selectDate);
                }
              },
            );
          },
        ),
      ],
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Color Theme"),
        SizedBox(height: 10),
        Container(
          width: double.infinity,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Pick a color",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            controller: _colorController,
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(
                      "Pick a color",
                      style: TextStyle(color: _currentColor),
                    ),
                    content: ColorPicker(
                      pickerColor: _currentColor,
                      onColorChanged: (color) {
                        setState(
                          () {
                            _currentColor = color;
                          },
                        );
                      },
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Pick"),
                      )
                    ],
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget builFilePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Cover"),
        SizedBox(height: 10),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _pickFile,
            child: Text("Pilih File"),
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              backgroundColor:
                  const MaterialStatePropertyAll<Color>(Colors.grey),
            ),
          ),
        ),
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
