import 'package:contact_apps/components/styles/custom_color.dart';
import 'package:contact_apps/components/widgets/contact_item.dart';
import 'package:contact_apps/models/providers/contact_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatefulWidget {
  static const routeName = '/detail';
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final dataKontakById = Provider.of<ContactProvider>(context).cp;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Contact"),
        centerTitle: true,
        backgroundColor: greyColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
          itemBuilder: ((context, index) {
            final kontak = dataKontakById.elementAt(index);
            return ContactItem(kontak);
          }),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: dataKontakById.length,
        ),
      ),
    );
  }
}
